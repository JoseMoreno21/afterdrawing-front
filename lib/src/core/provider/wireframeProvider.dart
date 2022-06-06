import 'dart:convert';
import 'dart:html';
import 'package:afterdrawing/src/model/WireframeDto.dart';
import 'package:http_parser/http_parser.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class WireframeProvider {
  Future<dynamic> uploadImagetoBack() async {
    var resultImage = await FilePicker.platform.pickFiles();

    if (resultImage != null) {
      PlatformFile file = resultImage.files.single;
      var request = http.MultipartRequest(
          'POST', Uri.parse('http://localhost:8081/api/upload/image'));
      request.files.add(http.MultipartFile.fromBytes(
          'file', await resultImage.files.first.bytes!.cast<int>(),
          //ByteStream.fromBytes(resultImage.files.first.bytes!).toList(),
          filename: resultImage.files.first.name,
          contentType: MediaType('image', 'jpeg')));

      var response = await request.send();

      if (response.statusCode == 200) {
        print(response.reasonPhrase);
        return resultImage.files.first.name;
      } else {
        print(response.statusCode);
        print(response.reasonPhrase);
        return Future.error("Internal Server Error");
      }
    } else {
      return false;
    }
  }

  downloadCode() {
    var url =
        "http://localhost:8081/api/get/wireframe/code/download"; /*Url.createObjectUrlFromBlob(
        Blob(["http://localhost:8081/api/get/wireframe/code/download"]));*/
    AnchorElement(href: url)
      ..setAttribute('download', '<Code1.txt>')
      ..click();
  }

  Future<bool> isUploadedImageAvailable(nameFileArgument) async {
    /*if (nameFileArgument.contains(" ")) {
      nameFileArgument.replaceAll(" ", "%20");
    }*/
    String url = 'http://localhost:8081/api/get/wireframe/${nameFileArgument}';

    Uri uri = Uri.parse(url);
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      return true;
    } else {
      return Future.error("Internal Server Error");
    }
  }

  Future<List<String>> getWireframeInfo(String nameFileArgument) async {
    /*if (nameFileArgument.contains(" ")) {
      nameFileArgument.replaceAll(" ", "%20");
    }*/

    String url =
        'http://localhost:8081/api/get/wireframe/info/${nameFileArgument}';

    Uri uri = Uri.parse(url);
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      dynamic jsonresponse = json.decode(response.body);

      var wireResponse = WireframeDto.fromJson(jsonresponse);

      List<String> wireframeCode = wireResponse.code;
      print(wireframeCode);
      return wireframeCode;
    } else {
      return Future.error("Internal Server Error");
    }
  }
}

List<int> convertFileToCast(data) {
  List<int> list = data.cast();
  return list;
}

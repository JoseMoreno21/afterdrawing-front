class WireframeDto {
  int id = 0;

  String name = '';

  String type = '';

  var image = null;

  List<String> classes = [];

  List<String> code = [];

  List<int> x1 = [];

  List<int> y1 = [];

  List<int> x2 = [];

  List<int> y2 = [];

  WireframeDto({
    required this.id,
    required this.name,
    required this.type,
    required this.image,
    required this.classes,
    required this.code,
    required this.x1,
    required this.y1,
    required this.x2,
    required this.y2,
  });

  factory WireframeDto.fromJson(Map<String, dynamic> wireJson) {
    var classesFromJson = wireJson['classes'];
    List<String> classesList = classesFromJson.cast<String>();

    var codeFromJson = wireJson['code'];
    List<String> codeList = codeFromJson.cast<String>();

    var x1FromJson = wireJson['x1'];
    List<int> x1List = x1FromJson.cast<int>();
    var y1FromJson = wireJson['y1'];
    List<int> y1List = y1FromJson.cast<int>();

    var x2FromJson = wireJson['x2'];
    List<int> x2List = x2FromJson.cast<int>();
    var y2FromJson = wireJson['y2'];
    List<int> y2List = y2FromJson.cast<int>();

    return WireframeDto(
        id: wireJson['id'],
        name: wireJson['name'],
        type: wireJson['type'],
        image: wireJson['image'],
        classes: classesList,
        code: codeList,
        x1: x1List,
        y1: y1List,
        x2: x2List,
        y2: y2List);
  }
}

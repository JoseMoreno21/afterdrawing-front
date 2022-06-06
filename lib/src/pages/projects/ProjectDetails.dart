import 'package:afterdrawing/src/utils/Utils.dart';
import 'package:flutter/material.dart';

import 'Project.dart';

class ProjectDetails extends StatefulWidget {
  //final Project project;
  const ProjectDetails({Key? key}) : super(key: key);

  @override
  State<ProjectDetails> createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  var nameFile = "";
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var argumentProject = ModalRoute.of(context)!.settings.arguments as Project;

    return Scaffold(
      appBar: AppBar(title: Text(argumentProject.title)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(argumentProject.description),
          SizedBox(
            height: 30,
          ),
          Scrollbar(
            controller: _scrollController,
            child: Container(
              height: 400,
              child: ListView.builder(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  itemCount: argumentProject.ninterfaces,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        print("Tap");
                        Utils.homeNavigator.currentState!.pushNamed(
                            'wireframeview',
                            arguments: argumentProject);
                      },
                      child: FadeInImage(
                          width: 300,
                          //height: 100,
                          placeholder:
                              AssetImage("lib/src/images/wireframelogo.png"),
                          image: NetworkImage(
                              'http://localhost:8081/api/get/wireframe/${nameFile}'),
                          imageErrorBuilder: (context, error, stackTrace) {
                            return Image.asset(
                              "lib/src/images/wireframelogo.png",
                              width: 300,
                            );
                          }),
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(18)),
              child: Text(
                "Generar interface",
                style: TextStyle(fontSize: 16),
              ))
        ]),
      ),
    );
  }
}

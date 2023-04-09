import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:git_clone/View/Widgets/Home_widgets/work_Widget.dart';

import '../../../../Models/foldersModel.dart';
import '../../../../Services/ExploreService/exploreService.dart';
import '../../../../Services/HomeReposService/repositoryFolderService.dart';
import '../../../Widgets/Home_widgets/file.dart';

class CodeOthers_Files extends StatefulWidget {
  CodeOthers_Files(this.name, {super.key});
  String name;
  // List<FoldersModel> model;
  @override
  State<CodeOthers_Files> createState() => _CodeOthers_FilesState();
}

//nb=
class _CodeOthers_FilesState extends State<CodeOthers_Files> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 20, 22, 27),
          title: const Text(
            'Files',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share_outlined,
                color: Color.fromARGB(223, 9, 138, 212),
                size: 25,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Color.fromARGB(223, 9, 138, 212),
                size: 25,
              ),
            ),
          ],
        ),
        body: FutureBuilder(
            future: GetExploreService.getRepoOthers( widget.name),
            builder: (context, snapshot) => snapshot.hasData
                ? SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          color: const Color.fromARGB(255, 20, 22, 27),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 47.0 * snapshot.data!.length,
                              child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: snapshot.data!.length,
                                itemBuilder: (context, index) {
                                  return file(
                                      widget.name,
                                      snapshot.data![index].type == Type.DIR
                                          ? const Icon(
                                              Icons.folder,
                                              size: 27,
                                              color: Color.fromARGB(
                                                  255, 124, 190, 243),
                                            )
                                          : const Icon(
                                              Icons.insert_drive_file_outlined,
                                              color: Color.fromARGB(
                                                  255, 206, 206, 206),
                                              size: 27,
                                            ),
                                      index,
                                      snapshot.data!,
                                      context);
                                },
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                : Container(
                    color: Colors.black,
                    child: Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 6,
                      ),
                    ),
                  )));
  }
}

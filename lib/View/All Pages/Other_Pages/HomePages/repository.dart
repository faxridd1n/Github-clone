import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:git_clone/View/All%20Pages/Other_Pages/HomePages/repository_Into.dart';
import 'package:git_clone/View/Widgets/Notific_widgets/sort_widget.dart';
import 'package:git_clone/View/Widgets/Profile_widgets/repository_items.dart';

import '../../../../Models/homeReposModel.dart';
import '../../../../Services/HomeReposService/homeReposService.dart';
import '../../../Widgets/Home_widgets/repository.dart';

class Repository extends StatefulWidget {
  Repository({super.key});
  // List<RepositoriesModel> model;
  @override
  State<Repository> createState() => _RepositoryState();
}

//nb=
class _RepositoryState extends State<Repository> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 22, 27),
        title: const Text(
          'Repositories',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size(
            MediaQuery.of(context).size.width,
            35,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: popUpMenu('All', context),
              ),
            ],
          ),
        ),
        elevation: 0,
      ),
      body: FutureBuilder(
          future: GetRepositoryService.getRepositories(),
          builder: (context, snapshot) => snapshot.hasData
              ? SingleChildScrollView(
                  child: SizedBox(
                    height: snapshot.data!.length * 75,
                    child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      Repository_Into(snapshot.data![index]),
                                ),
                              );
                            },
                            child: repositoryList(
                              context,
                              snapshot.data![index],
                            ),
                          );
                        },
                      ),
                  ),
                )
              : Container(
                  color: Colors.black,
                  child: const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 6,
                    ),
                  ),
                )),
    );
  }
}

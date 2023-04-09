import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:git_clone/Services/HomeReposService/homeReposService.dart';
import 'package:git_clone/View/All%20Pages/Other_Pages/HomePages/repository_Into.dart';
import 'package:git_clone/View/Widgets/Home_widgets/repository.dart';

import '../../../../Models/homeReposModel.dart';
import '../../../Widgets/Profile_widgets/repository.dart';

class RepositoryList extends StatefulWidget {
  RepositoryList(this.model,{super.key});
  String model;
  @override
  State<RepositoryList> createState() => _RepositoryListState();
}

//nb=
class _RepositoryListState extends State<RepositoryList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: GetRepositoryService.getOthersRepositories(widget.model),
       builder:(context, snapshot) => 
       snapshot.hasData?
       Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 20, 22, 27),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                'faxridd1n',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 187, 187, 187),
                ),
              ),
              Text(
                'Repositories',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 25,
                color: Color.fromARGB(223, 9, 138, 212),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Repository_Into(snapshot.data![index]),
                        ),
                      );
                    },
                    child: repositoryListProfile(snapshot.data![index]));
              }),
        ),
           )
      :Scaffold(
        body:
        Container(
          color: Colors.black,
          child: const Center(
            child: CircularProgressIndicator(
              strokeWidth: 6,
            ),
          ),
        )
      )
    );
  }
}

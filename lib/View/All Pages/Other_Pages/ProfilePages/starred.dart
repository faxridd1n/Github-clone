import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../Models/homeReposModel.dart';
import '../../../../Services/HomeReposService/homeReposService.dart';
import '../../../Widgets/Profile_widgets/repository.dart';
import '../HomePages/repository_Into.dart';

class StarredRepos extends StatefulWidget {
  StarredRepos({super.key});
  // List<RepositoriesModel> model;
  @override
  State<StarredRepos> createState() => _StarredReposState();
}

class _StarredReposState extends State<StarredRepos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 20, 22, 27),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text(
              'faxridd1n',
              style: TextStyle(
                color: Color.fromARGB(255, 201, 201, 201),
                fontSize: 16,
              ),
            ),
            Text(
              'Starred Repositories',
              style: TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: FutureBuilder(
        future: GetRepositoryService.getRepositories(),
        builder: (context, snapshot) => SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 12),
                  color: Color.fromARGB(255, 20, 22, 27),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.star_border_rounded,
                        size: 28,
                        color: Color.fromARGB(255, 180, 180, 180),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Starred',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      )
                    ],
                  ),
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
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
                          child: repositoryListProfile(snapshot.data![index]));
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

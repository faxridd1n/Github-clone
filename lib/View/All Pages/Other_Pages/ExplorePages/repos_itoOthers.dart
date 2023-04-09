import 'package:flutter/material.dart';
import 'package:git_clone/Services/HomeReposService/homeReposService.dart';

import '../../../../Models/exploreModel.dart';
import '../../../../Models/homeReposModel.dart';
import '../../../../Services/ExploreService/exploreService.dart';
import '../../../../Services/HomeReposService/repositoryFolderService.dart';
import '../../../Widgets/Home_widgets/work_Widget.dart';
import '../../../Widgets/Profile_widgets/workList.dart';

// ignore: camel_case_types
class Others_Repos_Into extends StatefulWidget {
  Others_Repos_Into(this.model, {super.key});
  ExploreModel model;

  @override
  State<Others_Repos_Into> createState() => _Others_Repos_IntoState();
}

//nb=
class _Others_Repos_IntoState extends State<Others_Repos_Into> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width * 0.245;
    return Scaffold(
        backgroundColor: const Color.fromARGB(232, 10, 10, 10),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 20, 22, 27),
          foregroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_circle_outline_outlined,
                size: 27,
                color: Color.fromARGB(223, 9, 138, 212),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                size: 27,
                color: Color.fromARGB(223, 9, 138, 212), //nb=
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 10,
                            backgroundImage: NetworkImage(widget
                                    .model.actor!.avatarUrl ??
                                'https://icon-library.com/images/default-user-icon/default-user-icon-13.jpg'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.model.actor!.login!,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 194, 193, 193),
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                     Row(
                          children: [
                            SizedBox(
                        width: MediaQuery.of(context).size.width*0.85,
                        child:  Text(
                              widget.model.repo!.name!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                             ),
                          ],
                        ),
                     
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star_border_rounded,
                            size: 20,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '0',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'stars',
                            style: TextStyle(
                              color: Color.fromARGB(255, 212, 212, 212),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.account_tree_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '0',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'forks',
                            style: TextStyle(
                              color: Color.fromARGB(255, 212, 212, 212),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              backgroundColor:
                                  const Color.fromARGB(255, 20, 22, 27),
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: size,
                                vertical: 13,
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.star_border_rounded,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Star',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              backgroundColor:
                                  const Color.fromARGB(255, 20, 22, 27),
                            ),
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 1, vertical: 14),
                              child: Icon(
                                Icons.notifications,
                                size: 22,
                                color: Color.fromARGB(223, 9, 138, 212), //nb=
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  color: const Color.fromARGB(255, 20, 22, 27),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 4,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return workWidgetProfile(index, context);
                            }),
                      ),
                      const Divider(
                        thickness: 0.3,
                        color: Color.fromARGB(255, 111, 113, 114),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.account_tree_outlined,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'main',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              255, 201, 200, 200)),
                                    )
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Change branch',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(223, 9, 138, 212),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            // FutureBuilder(
                            //   future: GetExploreService.getRepoOthers( widget.model.actor!.login!.toString().substring(6), widget.model.repo!.name!),
                            //   builder:(context, snapshot) =>
                            ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: mainImages.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return workWidgetOthers(
                                      widget.model.repo!.name!,
                                     
                                      index,
                                      context);
                                }),
                            //),
                          ],
                        ),
                      ),
                      //nb=
                      const Divider(
                        thickness: 0.3,
                        color: Color.fromARGB(255, 111, 113, 114),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.info_outline,
                              size: 20,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'README.md',
                              style: TextStyle(
                                color: Color.fromARGB(255, 194, 192, 192),
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        )
        // : Container(
        //     color: Colors.black,
        //     child: const Center(
        //       child: CircularProgressIndicator(strokeWidth: 6),
        //     ),
        //   )
        );
  }
}

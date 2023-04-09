import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:git_clone/View/All%20Pages/Other_Pages/HomePages/repository_Into.dart';
import 'package:git_clone/View/All%20Pages/Other_Pages/ProfilePages/usersProfile.dart';

import '../../../Models/exploreModel.dart';
import '../../All Pages/Other_Pages/ExplorePages/repos_itoOthers.dart';

// ignore: non_constant_identifier_names
Widget explore_item(BuildContext context, ExploreModel model) {
  return Container(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  //nb=
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnotherProfile(model.actor!.login!)
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Center(
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: NetworkImage(model
                                          .actor!.avatarUrl ??
                                      'https://icon-library.com/images/default-user-icon/default-user-icon-13.jpg'),
                                ),
                              ),
                            ),
                            const Positioned(
                              right: 2,
                              bottom: 2,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor:
                                    Color.fromARGB(255, 109, 109, 109),
                                child: Center(
                                  child: Icon(
                                    Icons.my_library_books_outlined,
                                    size: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.30,
                          child: Text(
                            model.actor!.login!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.22,
                          child: Text(
                            model.payload!.refType!,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 177, 177, 177),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      model.createdAt.toString().substring(0, 9),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 172, 171, 171),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              //nb=
              InkWell(
                onTap: () {
                  //nb=
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Others_Repos_Into(
                        model,
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 20, 22, 27),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundImage: NetworkImage(
                                model.actor!.avatarUrl ??
                                    'https://icon-library.com/images/default-user-icon/default-user-icon-13.jpg',
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              model.repo!.name!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            )
                          ],
                        ),
                        model.payload!.description != null
                            ? const SizedBox(
                                height: 15,
                              )
                            : const SizedBox(),
                        model.payload!.description != null
                            ? Row(
                                children: [
                                  Text(
                                    model.payload!.description!,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 210, 210, 210),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              )
                            : const SizedBox(),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.star_border_rounded,
                              color: Color.fromARGB(255, 211, 211, 211),
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                color: Color.fromARGB(255, 210, 210, 210),
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.circle,
                              color: Colors.teal,
                              size: 18,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Dart',
                              style: TextStyle(
                                color: Color.fromARGB(255, 210, 210, 210),
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.person_outline_rounded,
                              size: 20,
                              color: Color.fromARGB(255, 188, 187, 187),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '1 contributor',
                              style: TextStyle(
                                color: Color.fromARGB(255, 204, 204, 204),
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide.none,
                            ),
                            backgroundColor:
                                const Color.fromARGB(245, 31, 34, 40),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.3,
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.star_border_rounded,
                                  color: Color.fromARGB(255, 200, 200, 200),
                                  size: 22,
                                ),
                                Text(
                                  'STAR',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 197, 197, 197),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              )
           
            ],
          ),
        )
      ],
    ),
  );
}

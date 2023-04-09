import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:git_clone/Services/ProfileService/profile_service.dart';
import 'package:git_clone/View/All%20Pages/Other_Pages/ProfilePages/followers.dart';
import 'package:git_clone/View/All%20Pages/Other_Pages/ProfilePages/following.dart';
import 'package:git_clone/View/Widgets/Profile_widgets/repository_items.dart';

import '../../../../Models/ProfileModel.dart';
import '../../../Widgets/Profile_widgets/list.dart';

class AnotherProfile extends StatefulWidget {
  AnotherProfile(this.login, {super.key});
  String login;
  @override
  State<AnotherProfile> createState() => _AnotherProfileState();
}

//nb=
class _AnotherProfileState extends State<AnotherProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 22, 27),
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Color.fromARGB(255, 20, 22, 27)),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 20, 22, 27),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_outlined,
              size: 30,
              color: Color.fromARGB(223, 9, 138, 212),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
              size: 30,
              color: Color.fromARGB(223, 9, 138, 212),
            ),
          ),
        ],
      ),
      body: FutureBuilder(
          future: GetProfileService.getOthersProfile(widget.login),
          builder: (context, snapshot) => snapshot.hasData
              ? SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(snapshot
                                          .data!.avatarUrl ??
                                      'https://icon-library.com/images/default-user-icon/default-user-icon-13.jpg'),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    snapshot.data!.name != null
                                        ? Text(
                                            snapshot.data!.name!,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        : SizedBox(),
                                    Text(
                                      snapshot.data!.login!,
                                      style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 185, 185, 185),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 45,
                              width: MediaQuery.of(context).size.width * 0.94,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color.fromRGBO(52, 59, 68, 0.949),
                              ),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.track_changes_outlined,
                                    color: Colors.red,
                                    size: 27,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Focusing',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            snapshot.data!.bio != null
                                ? const SizedBox(
                                    height: 25,
                                  )
                                : const SizedBox(),
                            snapshot.data!.bio != null
                                ? Text(
                                    snapshot.data!.bio!,
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 226, 226, 226),
                                        fontSize: 16),
                                  )
                                : const SizedBox(),
                            const SizedBox(
                              height: 8,
                            ),
                            snapshot.data!.location != null
                                ? Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on_outlined,
                                        color:
                                            Color.fromARGB(255, 221, 221, 221),
                                        size: 25,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        snapshot.data!.location!,
                                        style: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 221, 221, 221),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                  )
                                : const SizedBox(),
                            const SizedBox(
                              height: 8,
                            ),
                            //
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.65,
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Followers(widget.login),
                                        ),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.person_outline_outlined,
                                          color: Color.fromARGB(
                                              255, 226, 225, 225),
                                          size: 25,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '${snapshot.data!.followers!} followers',
                                          style: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 218, 216, 216),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Following(widget.login),
                                        ),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Text(
                                          '${snapshot.data!.following!} following',
                                          style: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 218, 216, 216),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                backgroundColor:
                                    const Color.fromRGBO(52, 59, 68, 0.949),
                              ),
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.25,
                                  vertical: 13,
                                ),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.check,
                                      size: 20,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Following',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 15,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.star_border,
                                    color: Color.fromARGB(255, 189, 188, 188),
                                    size: 27,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text(
                                  'Popular',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.77 * 2,
                        height: MediaQuery.of(context).size.height * 0.21,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 9,
                          itemBuilder: (context, index) {
                            return repository(context, index);
                          },
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Color.fromARGB(255, 35, 40, 49),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: imagesList2.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return listWork2(snapshot.data!.publicRepos!,snapshot.data!.login!,imagesList2[index],
                                  namesList2[index], index, context);
                            },
                          ),
                        ),
                      const Divider(
                        thickness: 25,
                        color: Colors.black,
                      ),
                    ],
                  ),
                )
              : Container(
                  child: const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 6,
                    ),
                  ),
                )),
    );
  }
}

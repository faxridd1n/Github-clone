import 'package:flutter/material.dart';
import 'package:git_clone/View/All%20Pages/Other_Pages/ProfilePages/usersProfile.dart';

import '../../../../Services/Follow/followService.dart';
import '../../../Widgets/Profile_widgets/followers.dart';

class Following extends StatefulWidget {
  Following(this.model, {super.key});
  String model;
  @override
  State<Following> createState() => _FollowingState();
}

//nb=
class _FollowingState extends State<Following> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 22, 27),
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:  [
            Text(
              widget.model,
              style: TextStyle(
                  color: Color.fromARGB(255, 184, 183, 183),
                  fontWeight: FontWeight.w300,
                  fontSize: 16),
            ),
            Text(
              'Following',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
      body: FutureBuilder(
          future: GetFollowInfoService.getFollowing(widget.model),
          builder: (context, snapshot) => snapshot.hasData
              ? SingleChildScrollView(
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
                                  builder: (context) =>
                                      AnotherProfile(snapshot.data![index].login!),
                                ),
                              );
                            },
                            child: followers(snapshot.data![index]),);
                      }),
                )
              : Container(
                  child: Center(child: CircularProgressIndicator(),),
                ),),
    );
  }
}

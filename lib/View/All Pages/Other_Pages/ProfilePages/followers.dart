import 'package:flutter/material.dart';
import 'package:git_clone/Services/Follow/followService.dart';
import 'package:git_clone/View/All%20Pages/Other_Pages/ProfilePages/usersProfile.dart';

import '../../../Widgets/Profile_widgets/followers.dart';

class Followers extends StatefulWidget {
  Followers(this.model,{super.key});
  String model;
  @override
  State<Followers> createState() => _FollowersState();
}

//nb=
class _FollowersState extends State<Followers> {
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
              'Followers',
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
        future: GetFollowInfoService.getFollower(widget.model),
        builder: (context, snapshot) => 
        snapshot.hasData?
        SingleChildScrollView(
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
                          builder: (context) => AnotherProfile(snapshot.data![index].login!),
                        ),
                      );
                    },
                    child: followers(snapshot.data![index]));
              }),
        ):Container(
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        )

      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_clone/View/All%20Pages/Other_Pages/ExplorePages/repos_itoOthers.dart';
import 'package:git_clone/View/All%20Pages/Other_Pages/HomePages/repository_Into.dart';
import 'package:git_clone/View/Widgets/Explore_widgets/explore_item.dart';

import '../../../Controllers/bottom_nav_pages/explore_controller.dart';
import '../../../Services/ExploreService/exploreService.dart';
import '../../Widgets/Explore_widgets/work_widget.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});
//nb=
  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 22, 27),
        title: const Text(
          'Explore',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GetBuilder(
        init: ExploreController(),
        builder: (controller) => Container(
          //nb=
          child: FutureBuilder(
            future: GetExploreService.getRepositories(),
            builder: (context, snapshot) => snapshot.hasData
                ? SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          color: const Color.fromARGB(255, 20, 22, 27),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Discover',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                workWidgetExplore(
                                    0, context, 'Trending Repositories'),
                                const SizedBox(
                                  height: 15,
                                ),
                                workWidgetExplore(1, context, 'Awesome Lists'),
                                const SizedBox(
                                  height: 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Activity',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.sort,
                                    size: 22,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) => explore_item(
                            context,
                            snapshot.data![index],
                          ),
                        )
                      ],
                    ),
                  )
                : Container(
                    color: Colors.black,
                    child: const Center(
                      child: CircularProgressIndicator(strokeWidth: 6),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

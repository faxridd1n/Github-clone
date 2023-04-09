import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:git_clone/View/Widgets/Home_widgets/commits.dart';

class CommitPage extends StatefulWidget {
  const CommitPage({super.key});

  @override
  State<CommitPage> createState() => _CommitPageState();
}

class _CommitPageState extends State<CommitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
            backgroundColor: const Color.fromARGB(255, 20, 22, 27),

        title: const Text(
          'Commits',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder:(context,index){
            return commit_widget(context);
          } 
          ),
      ),
    );
  }
}

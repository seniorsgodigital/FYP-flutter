import 'package:flutter/material.dart';

class DiscussionForumScreen extends StatefulWidget {
  const DiscussionForumScreen({Key? key}) : super(key: key);

  @override
  State<DiscussionForumScreen> createState() => _DiscussionForumScreenState();
}

class _DiscussionForumScreenState extends State<DiscussionForumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            child: Text('Discussion Forum Page', style: TextStyle(fontSize: 20),),
          ),
        )
    );
  }
}

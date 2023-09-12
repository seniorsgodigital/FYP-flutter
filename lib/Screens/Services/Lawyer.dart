import 'package:flutter/material.dart';

class Lawyer extends StatefulWidget {
  const Lawyer({Key? key}) : super(key: key);

  @override
  State<Lawyer> createState() => _LawyerState();
}

class _LawyerState extends State<Lawyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lawyer Service"),
      ),
    );
  }
}

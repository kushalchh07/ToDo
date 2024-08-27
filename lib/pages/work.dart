import 'package:flutter/material.dart';
import 'package:todo_app/bg.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body:BackGround(name:"Work",noOftasks:4,image:"breifcase"),
    );
  }
}
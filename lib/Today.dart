import 'package:flutter/material.dart';
import 'package:todo_app/bg.dart';

class Today extends StatelessWidget {
  const Today({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body:BackGround(name:"Today",noOftasks:4,image:"sun"),
    );
  }
}
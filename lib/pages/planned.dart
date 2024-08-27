import 'package:flutter/material.dart';
import 'package:todo_app/bg.dart';

class Planned extends StatelessWidget {
  const Planned({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body:BackGround(name:"Planned",noOftasks:4,image:"calendar"),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:todo_app/bg.dart';

class Personal extends StatelessWidget {
  const Personal({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:BackGround(name:"Personal",noOftasks:4,image:"person"),
    );
  }
}
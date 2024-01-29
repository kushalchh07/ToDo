import 'package:flutter/material.dart';
import 'package:todo_app/bg.dart';

class Shopping extends StatelessWidget {
  const Shopping({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body:BackGround(name:"Shopping",noOftasks:4,image:"bag"),
    );
  }
}
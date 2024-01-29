

// ignore_for_file: prefer_const_constructors

// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:todo_app/dialog_box.dart';

class BackGround extends StatefulWidget {
  final String name;
  final int noOftasks;
  final String image;
  const BackGround(
      {super.key,
      required this.name,
      required this.noOftasks,
      required this.image});

  @override
  State<BackGround> createState() => _BackGroundState();
}



class _BackGroundState extends State<BackGround> {

 final _controller =TextEditingController();
 void saveNewTask(){
  setState(() {
    
  });
 }
  @override
  Widget build(BuildContext context) {
     void createTasks() {
  showDialog(
    context:context,
    builder:(context) {
      return DialogBox(
        controller: _controller,
      onCancel: () => Navigator.of(context).pop(),
        onSave: saveNewTask,
      );
    },
  );
}
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height / 2,
                decoration: BoxDecoration(
                    color: Color(0xfff9ea85),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(190, 100),
                        bottomRight: Radius.elliptical(190, 100))),
              ),
              SafeArea(
                  child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(Icons.arrow_back)),
                      Spacer(),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                    ],
                  )
                ],
              ))
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: createTasks,
        hoverColor: Colors.blue[700],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app/homepage.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assets/images/splash.jpeg"),
                height: size.height / 2.5,
              ),
              SizedBox(
                height: 50,
              ),
              Text("Get Organized your life",
                  style: TextStyle(
                      color: Color.fromARGB(255, 68, 68, 68),
                      fontWeight: FontWeight.bold,
                      fontSize: 28)),
              SizedBox(height: 10),
              Text("Tudy is a simple and effective",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w100,
                      fontSize: 17)),
              // SizedBox(
              //   height: 10,
              // ),
              Text("to-do list and task manager app",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w100,
                      fontSize: 17)),
              // SizedBox(
              //   height: 10,
              // ),
              Text("which helps you manage time",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w100,
                      fontSize: 17)),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  HomePage())),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(size.width * 0.35, 55),
                      backgroundColor: Color.fromARGB(255, 2, 192, 43)),
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
// import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/Today.dart';
import 'package:todo_app/personal.dart';
import 'package:todo_app/planned.dart';
import 'package:todo_app/shopping.dart';
import 'package:todo_app/work.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> icon = [
    "assets/images/sun.png",
    "assets/images/calendar.png",
    "assets/images/person.png",
    "assets/images/bag.png",
    "assets/images/shopping.png",
  ];

  List<String> parameters = [
    "Today",
    "Planned",
    "Personal",
    "Work",
    "Shopping",
  ];

  List<int> noOfTasks = [
    4,
    2,
    6,
    5,
    8,
  ];
  List tasksParameters = const [
    Today(),
    Planned(),
    Personal(),
    Work(),
    Shopping(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xfff9ea85),
        ),
        drawer: Drawer(),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height / 2,
                  decoration: BoxDecoration(
                      color: Color(0xfff9ea85),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(190, 120),
                          bottomRight: Radius.elliptical(190, 120))),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 40),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hello Kushal!",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Text(
                                "You have 4 tasks Today",
                                style: TextStyle(
                                    fontWeight: FontWeight.w100, fontSize: 14),
                              )
                            ],
                          ),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage("assets/images/profile.jpeg"),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.72335,
                        child: SingleChildScrollView(
                          // scrollDirection: Axis.vertical,
                          child: Column(
                            children: List.generate(
                                5,
                                (index) => Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Card(
                                        elevation: 12,
                                        child: InkWell(
                                          onTap: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      tasksParameters[index])),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            height: size.height / 7,
                                            width: size.width,
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 20,
                                                ),
                                                Image.asset(
                                                  icon[index],
                                                  height: 60,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      parameters[index],
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20),
                                                    ),
                                                    Text(
                                                      "${noOfTasks[index]}tasks",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w100,
                                                          fontSize: 14),
                                                    )
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(
                                                            Icons.more_vert))
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    )),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

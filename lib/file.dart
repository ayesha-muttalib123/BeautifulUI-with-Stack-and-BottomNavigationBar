import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class File extends StatefulWidget {
  const File({super.key});

  @override
  State<File> createState() => _FileState();
}

class _FileState extends State<File> {
  @override
  Widget build(context) {
    double scrollposition = 0;
    List v1 = ["v1", "v2", "v3", "v1", "v2"];
    List routine = [
      "Online Class Routine",
      "Office Work List",
      "Day Task",
      "work task",
      "Home Task"
    ];
    List date = [
      "10/12/2022",
      "15/12/2022",
      "10/12/2022",
      "10/12/2022",
      "10/12/2022"
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(223, 247, 244, 244),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                color: Color.fromARGB(223, 219, 216, 216),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 39, 63, 40),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SafeArea(
                            minimum: EdgeInsets.only(top: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Hi, Habib 👋",
                                  style: TextStyle(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                                CircleAvatar(
                                  child: Image(
                                      image: AssetImage("assets/profile.png")),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Let’s explore your notes",
                                style: TextStyle(color: Color.fromARGB(255, 155, 152, 152)),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Container(
                            height: 170,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 3, 75, 57),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, top: 10, bottom: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Welcome to TickTick Task",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      )
                                    ],
                                  ),
                                  Expanded(
                                      child: Text(
                                    "Your one-stop app for task management. Simplify, track, and accomplish tasks with ease.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color:
                                            Color.fromARGB(255, 136, 132, 132)),
                                  )),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color.fromARGB(
                                                255, 102, 143, 103)),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.play_arrow,
                                              color: Colors.white,
                                            ),
                                            label: Text(
                                              "Watch Video",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )),
                                      ),
                                      Container(
                                          child: Image(
                                              image: AssetImage(
                                                  "assets/Capture.PNG"))),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                              padding: EdgeInsets.only(bottom: 70, right: 210),
                              child: Text(
                                "Reminder Task",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Colors.white),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // Positioned(
              //     top: 350,

              //       child: Container(height: 100,width: MediaQuery.of(context).size.width,

              //           child:
              //                Container(height: 100,width: 50,color: Colors.white,
              //                child: Text("dd"),

              //                ),

              //     ),

              //     )
              Positioned(
                top: 350,
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.count(
                    crossAxisCount: 1,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    // scrollDirection: Axis.horizontal,
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,

                    children: List.generate(
                      5,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            padding:
                                EdgeInsets.only(top: 5, bottom: 20, left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 80),
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    child: Image(
                                        image: AssetImage(
                                            "assets/${v1[index]}.PNG")),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "${routine[index]}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "${date[index]}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Color.fromARGB(
                                              255, 160, 158, 158)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              )

              // Positioned(top: 360,left: 20,   child:SingleChildScrollView(

              //   // child: Row(

              //   //   children: [

              //   //     Container(height: 100,color: Colors.white,width: 100 ,),

              //   //   ],

              // ))
            ]),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Tasks",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 143, 140, 140)),
                  ),
                ],
              ),
            ),
            
            Padding(
padding: EdgeInsets.only( bottom: 60),              child: Container(
                padding: EdgeInsets.only(left: 15,right: 15),
                height: 500,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        elevation: 50,
                        
                        borderOnForeground: true,
                        semanticContainer: true,
                        child: ListTile(
                          leading: Image(
                            image: AssetImage("assets/${v1[index]}.PNG"),
                          ),
                          title: Text(
                            "${routine[index]}",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Colors.black),
                          ),
                          subtitle: Text(
                            "${date[index]}",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Color.fromARGB(255, 160, 158, 158)),
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
   
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
      
          selectedItemColor: Color.fromARGB(255, 71, 102, 78),
          selectedFontSize: 13,
          unselectedFontSize: 13,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
      
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "Record",
              icon: Icon(Icons.video_camera_back_rounded),
            ),
            BottomNavigationBarItem(
              label: "Save",
              icon: Icon(Icons.save),
            ),
             BottomNavigationBarItem(
              label: "Setting",
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}

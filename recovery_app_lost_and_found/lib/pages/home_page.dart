// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recovery_app_lost_and_found/Widgets/Item_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 121, 60, 243),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Hello John',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'poppins semibold',
              ),
            ),
            Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(0, 2, 0, 10),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Color.fromARGB(255, 171, 130, 253),
                    width: 1.0,
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                        offset: Offset(2.0, 2.0))
                  ]),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lost an Item?",
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'poppins semibold',
                              ),
                            ),
                            Text(
                              "Or found a lost item?",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'poppins semibold',
                              ),
                              overflow: TextOverflow.visible,
                            ),
                          ],
                        ),
                        Icon(
                          Icons.waving_hand,
                          size: 40,
                          color: Color.fromARGB(255, 86, 9, 239),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "You can report it here to find",
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                        fontSize: 13,
                        // fontWeight: FontWeight.w400,
                        fontFamily: 'poppins semibold',
                      ),
                    ),
                    Text(
                      "it or help someone",
                      style: TextStyle(
                        fontSize: 13,
                        // fontWeight: FontWeight.w400,
                        fontFamily: 'poppins semibold',
                      ),
                      overflow: TextOverflow.visible,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color.fromARGB(255, 104, 33, 247))),
                        child: Text(
                          "Report an item",
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 155, 229, 254),
                      Color.fromARGB(255, 169, 138, 255)
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Color.fromARGB(255, 171, 130, 253),
                    width: 1.0,
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                        offset: Offset(2.0, 2.0))
                  ]),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.close,
                        size: 20,
                      ),
                    ),
                    Text(
                      "Learn how does this work?",
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'poppins semibold',
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tap to learn about how we",
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.w400,
                                fontFamily: 'poppins semibold',
                              ),
                            ),
                            Text(
                              "help you find your lost item or to",
                              style: TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.w400,
                                fontFamily: 'poppins semibold',
                              ),
                              overflow: TextOverflow.visible,
                            ),
                            Text(
                              "reach the right owner.",
                              style: TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.w400,
                                fontFamily: 'poppins semibold',
                              ),
                              overflow: TextOverflow.visible,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Reported items in last 48hrs",
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'poppins semibold',
                          ),
                        ),
                        Icon(
                          Icons.search,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ItemCard(
                          lostitem: "Notebook and Pen",
                          lostItemDesc: "Lost in meeting room",
                          nameOfPoster: "Posted by Neha",
                          index: 1),
                      ItemCard(
                        lostitem: "Keys",
                        lostItemDesc: "Found in cafeteria",
                        nameOfPoster: "Posted by Tanya",
                        index: 2,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ItemCard(
                        lostitem: "pendrive",
                        lostItemDesc: "Lost in classroom",
                        nameOfPoster: "Posted by Ribhav",
                        index: 3,
                      ),
                      ItemCard(
                        lostitem: "earbuds",
                        lostItemDesc: "Found in mess",
                        nameOfPoster: "Posted by kaustuv",
                        index: 4,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

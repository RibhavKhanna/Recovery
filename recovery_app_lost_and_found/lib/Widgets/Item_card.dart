// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemCard extends StatelessWidget {
  const ItemCard(
      {super.key,
      required this.lostitem,
      required this.lostItemDesc,
      required this.nameOfPoster,
      required this.index});
  final String lostitem;
  final int index;
  final String lostItemDesc;
  final String nameOfPoster;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.2, //160
          width: MediaQuery.of(context).size.width * 0.43, //170
          margin: EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 66, 0, 248),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("assets/img${index}.jpg")),
          ),
        ),
        Positioned(
          top: 80, //90
          right: -25,
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1, //80
              width: MediaQuery.of(context).size.width * 0.43, //150
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 2),
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 5.0, spreadRadius: 5.0)
                ],
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    lostitem,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'poppins semibold',
                    ),
                  ),
                  Text(
                    lostItemDesc,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'poppins semibold',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        nameOfPoster,
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          color: Color.fromARGB(255, 98, 24, 244),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'poppins semibold',
                        ),
                      ),
                      Text(
                        "3hrs ago",
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          color: Color.fromARGB(255, 98, 24, 244),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'poppins semibold',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

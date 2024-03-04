// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:recovery_app_lost_and_found/pages/home_page.dart';
import 'package:recovery_app_lost_and_found/pages/profile.dart';
import 'package:recovery_app_lost_and_found/pages/search_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [HomePage(), Profile(), SearchPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const AutomaticNotchedShape(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          StadiumBorder(),
        ),
        notchMargin: 0.01,
        padding: EdgeInsets.all(1),
        clipBehavior: Clip.antiAlias,
        child: Container(
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
              color: Colors.white,
              // borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Color.fromARGB(255, 213, 213, 213),
                width: 1.0,
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1.0,
                    offset: Offset(2.0, 2.0))
              ]),
          child: BottomNavigationBar(
            onTap: _navigateBottomBar,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Color.fromARGB(255, 104, 33, 247),
            currentIndex: _selectedIndex,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "profile"),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          hoverElevation: 10,
          // shape: BeveledRectangleBorder(
          //   borderRadius: BorderRadius.all(Radius.lerp(2, 2, 1)),
          // ),
          elevation: 4,
          backgroundColor: Color.fromARGB(255, 104, 33, 247),
          splashColor: Colors.grey,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () => setState(() {
            _selectedIndex = _pages.length - 2;
            print(_selectedIndex);
            print(_pages.length);
          }),
        ),
      ),
    );
  }
}

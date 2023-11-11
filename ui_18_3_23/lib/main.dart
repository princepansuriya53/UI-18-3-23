import 'package:flutter/material.dart';
import 'package:ui_18_3_23/message.dart';
import 'package:ui_18_3_23/singup.dart';

import 'profile.dart';

void main() {
  runApp(MaterialApp(home: Myapp()));
}

class Myapp extends StatefulWidget {
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  final List _widgetOptions = [
    const Text(
      'Home Page',
      textScaleFactor: 2,
      style: TextStyle(
          color: Colors.redAccent,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w500),
    ),
    message(),
    Profile(),
    Singup()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ' Home',
                backgroundColor: Color.fromARGB(255, 180, 47, 37)),
            BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: 'Message',
                backgroundColor: Color.fromARGB(255, 36, 112, 174)),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Color.fromARGB(255, 168, 110, 89),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.login_outlined),
              label: "Singup",
              backgroundColor: Color.fromARGB(255, 46, 156, 171),
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 30,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}

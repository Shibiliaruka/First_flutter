import 'package:chaton/settings.dart';
import 'package:flutter/material.dart';

import 'explore.dart';
import 'homescreen.dart';

class nav extends StatefulWidget {
  nav({Key? key}) : super(key: key);

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  int _selectedindex = 0;

  List<Widget> _sample = <Widget>[sc(), explore(), settings()];

  void _ontap(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _sample.elementAt(_selectedindex),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ('home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: ('expolre')),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: ('settings')),
          ],
          currentIndex: _selectedindex,
          onTap: _ontap,
        ),
      ),
    );
  }
}

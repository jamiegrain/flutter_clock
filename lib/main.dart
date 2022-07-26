// ignore_for_file: prefer_const_declarations, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'clocks/day_perc.dart';
import 'clocks/work_day_perc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget app = MaterialApp(
        home: Scaffold(
            body: WorkDayPercClock(),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color(0xFF6200EE),
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white.withOpacity(.60),
              selectedFontSize: 14,
              unselectedFontSize: 14,
              onTap: (value) {
                // Respond to item press.
              },
              items: const [
                BottomNavigationBarItem(
                  label: 'Label1',
                  icon: Icon(Icons.favorite),
                ),
                BottomNavigationBarItem(
                  label: 'Label1',
                  icon: Icon(Icons.music_note),
                ),
                BottomNavigationBarItem(
                  label: 'Label1',
                  icon: Icon(Icons.location_on),
                ),
                BottomNavigationBarItem(
                  label: 'Label1',
                  icon: Icon(Icons.library_books),
                ),
              ],
              // currentIndex: _current,
            )));
    return app;
  }
}

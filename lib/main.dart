import 'package:flutter/material.dart';

import './Home.dart';
import './Search.dart';
import './Calendar.dart';
import './NewStudyGroup.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _selectedPage = 0;
  final _pageOptions = [
    HomePage(),
    SearchPage(),
    CalendarPage(),
    NewStudyGroupPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Study Groups')),
          backgroundColor: Colors.deepPurple[900],
        ),
        body: _pageOptions[_selectedPage],
        floatingActionButton: FloatingActionButton.extended(
            icon: Icon(Icons.group),
            label: Text('New'),
            onPressed: () {
            print('Create Study Group');
          },
            backgroundColor: Colors.deepPurple[900]
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.date_range),
                label: 'Calendar'
            ),
          ],
        ),
      ),
    );
  }
}

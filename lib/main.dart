import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageElements createState() => HomePageElements();
}

class HomePageElements extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: _selectedIndex == 0 ? Color.fromRGBO(0, 0, 0, 255): Colors.white,
        body: Container(
          margin: EdgeInsets.only(top: 70.0, left: 30.0, right: 30.0, bottom: 20.0),
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() => {
                    if(_selectedIndex == 0) {
                      _selectedIndex = 1
                    } else {
                      _selectedIndex = 0
                    }
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(FontAwesomeIcons.sortAmountDown, size: 28.0, color: _selectedIndex == 0 ? Colors.white : Colors.black),
                    Icon(FontAwesomeIcons.userCircle, size: 30.0, color: _selectedIndex == 0 ? Colors.white : Colors.black),
                  ],
                ),
              ),
              const SizedBox(height: 60.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('Welcome, Doctor Code Select An Option',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 25.0, color: Colors.white)),
                  const SizedBox(height: 25.0),
                  const Text('Main Menu',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 20.0, color: Colors.white)),
                ],
              ),
              const SizedBox(height: 60.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              width: 150,
                              height: 160,
                              color: Color.fromRGBO(33,33,33,1),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Icon(FontAwesomeIcons.clipboardList, size: 75.0,
                                      color: Color.fromRGBO(255,103,146, 1)),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text("To-Do List", style: TextStyle(fontSize:20.0, color: Colors.white)),
                                      Text("2 items", style: TextStyle(color: Colors.white))
                                    ],
                                  ),
                                ],
                              )
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            height: 160,
                            color: Color.fromRGBO(33,33,33,1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.book, size: 75.0,
                                    color: Color.fromRGBO(21,126,251,1)),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text("Your notes", style: TextStyle(fontSize:20.0, color: Colors.white)),
                                    Text("3 items", style: TextStyle(color: Colors.white))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 50.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            height: 160,
                            color: Color.fromRGBO(33,33,33,1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.calendarCheck, size: 75.0,
                                    color: Color.fromRGBO(108,99,255,1)),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text("Agenda", style: TextStyle(fontSize:20.0, color: Colors.white)),
                                    Text("8 items", style: TextStyle(color: Colors.white))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            height: 160,
                            color: Color.fromRGBO(33,33,33,1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.cog, size: 75.0, color: Color.fromRGBO(255,182,108,1)),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text("Settings", style: TextStyle(fontSize:20.0, color: Colors.white)),
                                    Text("8 items", style: TextStyle(color: Colors.white))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      );
  }
}
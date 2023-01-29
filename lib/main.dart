import 'package:appdev/pages/EventPage.dart';
import 'package:appdev/pages/HomePage.dart';
import 'package:appdev/pages/add_event_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex =0;

  setCurrentIndex(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: [
            Text("AppDev", style: TextStyle(fontFamily: "Poppins"),),
            Text("Dates des modifications",style: TextStyle(fontFamily: "Poppins"),),
            Text("Formulaire d'ajout des dates",style: TextStyle(fontFamily: "Poppins"),)


      ][_currentIndex],
          backgroundColor: const Color(0xFF000000),
            ),



        body:[
          HomePage(),
          Eventpage(),
          AddEventPage()
        ][_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index)=>setCurrentIndex(index),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          iconSize: 32,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),
                label: "Acceuil"
            ),
            BottomNavigationBarItem(icon: Icon(Icons.remove_red_eye),
                label : "Dates"),
            BottomNavigationBarItem(icon: Icon(Icons.add),
                label : "New"),
          ],),
      ),
    );
  }
}






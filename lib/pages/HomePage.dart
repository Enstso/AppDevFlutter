import 'package:flutter/material.dart';

import 'EventPage.dart';
class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children:  [
    Image.asset("assets/images/dev.png"),
    const Text(
    "App Dev",
    style: TextStyle(
    fontSize: 42,
    fontFamily: 'Poppins'
    ),

    ),
    const Text(
    "Ma première application mobile en Flutter",
    style: TextStyle(
    fontSize: 24
    ),
    textAlign: TextAlign.center,
    ),
    const Padding(padding: EdgeInsets.only(top:15),),


    ],
    ),
    );
  }
}

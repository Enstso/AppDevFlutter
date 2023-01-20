import 'package:flutter/material.dart';
class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              "Dates des modifications",
              style: TextStyle(
                  fontFamily:'Poppins'
              ),
            ),
            backgroundColor: const Color(0xFF000000)
        ),
        body: const Center(
          child:  Text("Prochainement disponible",
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20
            ),),
        )
    );
  }
}
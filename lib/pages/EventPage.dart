import 'package:flutter/material.dart';

class Eventpage extends StatefulWidget {
  const Eventpage({Key? key}) : super(key: key);

  @override
  State<Eventpage> createState() => _EventpageState();
}

class _EventpageState extends State<Eventpage> {

  final events = [
    {
      "date": "15/01",
      "content" : "Création de la page principale",
      "image" : "dev.png"
    },

    {
      "date": "21/01",
      "content" : "Création de la seconde page",
      "image" : "dev.png"
    },

    {
      "date": "23/01",
      "content" : "Création d'une liste des dates des modifications",
      "image" : "dev.png"
    }
  ];

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
      body: Center(
        child:   ListView.builder(
          itemCount: events.length,
          itemBuilder: (context,index){
          final event = events[index];
          final image = event['image'];
          final date  = event['date'];
          final content = event['content'];
            return Card(
              child: ListTile(
                leading: Image.asset("assets/images/$image"),
                title: Text('$date',
                style: const TextStyle(
                  fontFamily: 'Poppins'

                ),
                ),
                subtitle: Text('$content',
                style: const TextStyle(
                  fontFamily: 'Poppins'
                ),
                ),

              ),
            );

          },
        ),
      ),
    );
  }
  }


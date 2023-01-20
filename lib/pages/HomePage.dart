import 'package:flutter/material.dart';

import 'EventPage.dart';
class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "AppDev",
            style: TextStyle(
                fontFamily: 'Poppins'
            ),
          ),
          backgroundColor: const Color(0xFF000000),
        ),
        body:  Center(
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

              ElevatedButton.icon(
                style : const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
                    backgroundColor: MaterialStatePropertyAll(Colors.black)
                ),
                onPressed: (){
                  Navigator.push(
                      context,
                      PageRouteBuilder(pageBuilder: (_,__,___)=> const EventPage()
                      )
                  );
                },
                label: const Text("Voir les dates des modifacations",
                  style: TextStyle(
                      fontFamily: 'Poppins'
                  ),
                ),
                icon: const Icon(Icons.remove_red_eye),

              )
            ],
          ),
        )
    );
  }
}

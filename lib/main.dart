import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: Scaffold(
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
                  )
                ],
              ),
            )
        )
    );
  }
}

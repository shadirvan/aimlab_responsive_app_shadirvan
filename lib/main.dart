import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          // Column to Show two cards
          child: Column(
            children: [
              //-------------------Card 1 --------------------
              Container(
                // padding and margin to keep the containers away from the screen bezels
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                height: 100,
                width: double.infinity, // uses width as same as screen width
                color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .start, // uses to align the containers to the left of the screen
                  children: [
                    // The grey container with fixed width with no responsivness
                    Container(
                      height: 25,
                      width: 200,
                      color: Colors.grey,
                    ),

                    const SizedBox(
                      height: 15,
                    ),

                    // Green containers with width as infinity(as much as the screen could take)
                    Container(
                      height: 30,
                      width: double.infinity,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              // -------------------Card 2 --------------------
              Stack(
                alignment: Alignment.topCenter,
                children: [ Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  height: 100,
                  width: double.infinity,
                  color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 30,
                        width: double.infinity,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ), Container(
                      height: 30,
                      width: 200,
                      color: Colors.grey,
                    )]
              ),
            ],
          ),
        ),
      ),
    );
  }
}

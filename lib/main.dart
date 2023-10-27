/* Simple Application to demonstrate responsiveness in flutter as a test for the internship by aim labs.
   Author : Mohammed Shadirvan Mc

 */

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
// Common colors used in the code

  final Color redCardColor = const Color(0xffD18585);
  final Color responsiveGreenColor = const Color(0xffA8D8AD);
  final Color constantGreyColor = const Color(0xffC4C4C4);

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
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 2,
                        offset: Offset(5, 5),
                        color: Colors.black26),
                  ],
                  color: redCardColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .start, // uses to align the containers to the left of the screen
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    // The grey container with fixed width with no responsivness
                    Container(
                      height: 25,
                      width: 230,
                      color: constantGreyColor,
                    ),

                    const SizedBox(
                      height: 15,
                    ),

                    // Green containers with width as infinity(as much as the screen could take)
                    Container(
                      height: 30,
                      width: double.infinity,
                      color: responsiveGreenColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              // -------------------Card 2 --------------------

              // used stack here to put the container on top of the card
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    margin: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 10),
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 2,
                            offset: Offset(5, 5),
                            color: Colors.black26),
                      ],
                      color: redCardColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        const SizedBox(
                          height: 25,
                        ),

                        // Resposive green container
                        Container(
                          height: 30,
                          width: double.infinity,
                          color: responsiveGreenColor,
                        ),
                      ],
                    ),
                  ),
                  // grey container in the middle
                  Container(
                    height: 50,
                    width: 200,
                    color: constantGreyColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

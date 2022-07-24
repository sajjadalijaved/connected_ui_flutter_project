import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Flutter App',
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Container(
        height: double.infinity,
        width: 380,
        margin: const EdgeInsets.only(left: 250, top: 30, bottom: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.white10,
                blurRadius: 5,
                spreadRadius: 3,
                offset: Offset(5, 5),
                // blurStyle: BlurStyle.outer
              ),
              BoxShadow(
                color: Colors.white10,
                blurRadius: 5,
                spreadRadius: 3,
                offset: Offset(-5, -5),
                // blurStyle: BlurStyle.outer
              ),
            ]),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Text(
                      'Living Room',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontStyle: FontStyle.italic),
                    ),
                    Text(
                      'Connected',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    )
                  ],
                ),
                Container(
                  height: 55,
                  width: 55,
                  child: const Icon(
                    Icons.apps,
                    size: 50,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white54,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            spreadRadius: 3,
                            blurStyle: BlurStyle.outer),
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            spreadRadius: 3,
                            blurStyle: BlurStyle.outer),
                      ]),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  margin: const EdgeInsets.only(top: 80),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white54,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 3,
                            blurStyle: BlurStyle.outer),
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 3,
                            blurStyle: BlurStyle.outer),
                      ]),
                ),
                Positioned(
                  top: 55,
                  left: 78,
                  child: Container(
                    height: 150,
                    width: 150,
                    margin: const EdgeInsets.only(top: 100),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [
                              Colors.limeAccent,
                              Colors.deepOrangeAccent
                            ],
                            stops: [
                              0.3,
                              0.9
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              spreadRadius: 3,
                              blurStyle: BlurStyle.inner)
                        ]),
                    alignment: Alignment.center,
                    child: const Text(
                      '73',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 75,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
              width: 300,
              margin: const EdgeInsets.only(top: 85),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Text(
                        'OUTSIDE',
                        style: TextStyle(color: Colors.black38, fontSize: 25),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '45',
                        style: TextStyle(color: Colors.black, fontSize: 50),
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        'HUMIDITY',
                        style: TextStyle(color: Colors.black38, fontSize: 25),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '20%',
                        style: TextStyle(color: Colors.black, fontSize: 50),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

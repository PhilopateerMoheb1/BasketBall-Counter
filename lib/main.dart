import 'package:flutter/material.dart';

void main() {
  runApp(BasketBallCounter());
}

class BasketBallCounter extends StatefulWidget {
  BasketBallCounter({
    super.key,
  });

  @override
  State<BasketBallCounter> createState() => _BasketBallCounterState();
}

class _BasketBallCounterState extends State<BasketBallCounter> {
  int _counterA = 0;

  int _counterB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("Points Counter"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text(
                      "Team A",
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      '$_counterA',
                      style: TextStyle(fontSize: 150),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                _counterA++;
                              });
                            },
                            child: const Text(
                              "Add 1 Point",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ))),
                    Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              _counterA += 2;
                            });
                          },
                          child: const Text(
                            "Add 2 Point",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              _counterA += 3;
                            });
                          },
                          child: const Text(
                            "Add 3 Point",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          )),
                    )
                  ],
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    indent: 40,
                    endIndent: 30,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      "Team B",
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      "$_counterB",
                      style: TextStyle(fontSize: 150),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                _counterB++;
                              });
                            },
                            child: const Text(
                              "Add 1 Point",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ))),
                    Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              _counterB += 2;
                            });
                          },
                          child: const Text(
                            "Add 2 Point",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              _counterB += 3;
                            });
                          },
                          child: const Text(
                            "Add 3 Point",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          )),
                    )
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 0,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: const Size(150, 50),
                  ),
                  onPressed: () {
                    _counterB = 0;
                    _counterA = 0;
                    setState(() {});
                  },
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

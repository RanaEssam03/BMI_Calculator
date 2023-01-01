import 'dart:math';
import 'package:flutter/material.dart';

import 'bmi_result_screen.dart';

class BMiScreen extends StatefulWidget {
  const BMiScreen({super.key});

  @override
  State<StatefulWidget> createState() => _BMiScreen();
}

class _BMiScreen extends State<BMiScreen> {
  bool isMale = true;
  double height = 180;
  var weight = 60;
  var age = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 47, 72),
      appBar: AppBar(
        title: const Center(child: Text("BMI CAlCULATOR")),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: isMale
                            ? const Color.fromARGB(255, 236, 232, 232)
                            : Colors.grey.withOpacity(0.2),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Icon(
                            Icons.male,
                            size: 100.0,
                          ),
                          // ignore: prefer_const_constructors
                          Text("MALE",
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: !isMale
                            ? const Color.fromARGB(255, 236, 232, 232)
                            : Colors.grey.withOpacity(0.2),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Icon(
                            Icons.female,
                            size: 100.0,
                          ),
                          // ignore: prefer_const_constructors
                          Text("FEMALE",
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey.withOpacity(0.5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("HEIGHT",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(height.round().toString(),
                            style: const TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        // ignore: prefer_const_constructors
                        Text("CM",
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    Slider(
                      inactiveColor: Colors.black,
                      activeColor: Colors.white,
                      thumbColor: const Color.fromARGB(255, 189, 94, 110),
                      value: height,
                      max: 220.0,
                      min: 80.0,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Weight",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(weight.toString(),
                                style: const TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900,
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: '1',
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      if (weight > 0) {
                                        weight--;
                                      }
                                    });
                                  },
                                  backgroundColor: Colors.black,
                                  child: const Icon(
                                    Icons.remove,
                                    size: 30,
                                  ),
                                ),
                                FloatingActionButton(
                                  heroTag: '2',
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  backgroundColor: Colors.black,
                                  child: const Icon(
                                    Icons.add,
                                    size: 30,
                                  ),
                                )
                              ],
                            )
                          ]),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "AGE",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(age.toString(),
                                style: const TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900,
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: '3',
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      if (age > 0) {
                                        age--;
                                      }
                                    });
                                  },
                                  backgroundColor: Colors.black,
                                  child: const Icon(
                                    Icons.remove,
                                    size: 30,
                                  ),
                                ),
                                FloatingActionButton(
                                  heroTag: '4',
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  backgroundColor: Colors.black,
                                  child: const Icon(
                                    Icons.add,
                                    size: 30,
                                  ),
                                )
                              ],
                            )
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            color: const Color.fromARGB(255, 189, 94, 110),
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                var result = weight / pow(height / 200, 2);
                result.round();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => BMIResultScreen(
                            age: age,
                            gender: (isMale ? 'Male' : 'female'),
                            result: result.toInt()))));
              },
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(60)),
                child: const Text("Calculate",
                    style: TextStyle(color: Colors.white, fontSize: 25)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

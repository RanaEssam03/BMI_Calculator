import 'package:bmi_calc/widgets/text_box.dart';
import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  String gender;
  int result;
  int age;
  BMIResultScreen(
      {super.key,
      required this.age,
      required this.gender,
      required this.result});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 47, 72),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("BMI Result"),
      ),
      body: Center(
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(164, 189, 94, 110),
            ),
            width: 200,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Gender : $gender  ",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("Result = $result",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("Age : $age",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            )),
      ),
    );
  }
}

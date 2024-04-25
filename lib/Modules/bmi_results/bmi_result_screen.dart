import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final bool isMale;
  final int result;
  final int age;
  BMIResultScreen({
    required this.result,
    required this.age,
    required this.isMale,
  });
  String getResult() {
    if (result >= 25) {
      return 'Overweight';
    } else if (result > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Result"
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Gender:${isMale?'Male':'Female'}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Result:${getResult()}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age:$age',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

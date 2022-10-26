import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {

  final int result;
  final bool isMale;
  final int age;

  BMIResult({
    required this.result,
    required this.isMale,
    required this.age,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[100],
      appBar: AppBar(
        // elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.amberAccent[100],
        title: Text('BMI result', style: TextStyle(fontSize: 25.0),)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gender : ${isMale? 'Male' : 'Female'}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
            ),),
            Text('Result : $result',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
            ),),
            Text('Age : $age',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
            ),),
          ],
        ),
      ),
    );
  }
}

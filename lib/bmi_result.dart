import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget
{
  final int result;
  final bool isMale;
  final int age;

  BMIResultScreen({
    @required this.result,
    @required this.age,
    @required this.isMale,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff090E21),
        shadowColor: null,
        elevation: 0,
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
        ),
        title: Container(
          width: double.infinity,
          child: Text(
            'BMI Result',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Container(
        color: Color(0xff090E21),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Gender : ${isMale ? 'Male' : 'Female'}',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffEB1555),
                ),
              ),
              Text(
                'Result : $result',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffEB1555),
                ),
              ),
              Text(
                'Age : $age',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffEB1555),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
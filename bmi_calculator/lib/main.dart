import 'package:flutter/material.dart';
import 'package:bmi_calculator/calculator/BMI.dart';
void main(){
  runApp(BMICalcualtor());
}
class BMICalcualtor extends StatelessWidget {
  const BMICalcualtor();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:BMI()
    );
  }
}

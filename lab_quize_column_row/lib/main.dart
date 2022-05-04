import 'package:flutter/material.dart';
import 'labquize.dart';
import 'stack.dart';
void main(){
  runApp(Home());
}
class Home extends StatelessWidget{
  const Home();
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Lab()
    );
  }
}

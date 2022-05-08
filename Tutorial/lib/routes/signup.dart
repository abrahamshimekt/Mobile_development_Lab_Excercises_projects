import 'package:flutter/material.dart';
import 'package:tutorial/routes.dart';

class Signup extends StatelessWidget {
  const Signup();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: EdgeInsets.only(top:100,left: 50,right:50),
            child: ListView(
              children: [
                Image.asset("assets/images/img_1.png",fit:BoxFit.cover),
                SizedBox(height: 40,),
                TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Name")),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "UserName"),
                ),
                SizedBox(height: 20,),
                TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Email")),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "password"),
                ),
                SizedBox(height: 30,),
                ElevatedButton(child:Text("Signup"),onPressed: (){Navigator.of(context)?.pushNamed(RouteGenerator.login);},)
              ],
            )));
  }
}

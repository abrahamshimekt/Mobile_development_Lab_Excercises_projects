import 'package:flutter/material.dart';
import 'package:tutorial_signup_page/routes.dart';

import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Login.jpg"))),
            child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Stack(
                  children: [
                    Container(),
                    SingleChildScrollView(
                        child: Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.6),
                            child:Form(key:_formKey,child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(left: 35, right: 35),
                                      child: Column(
                                        children: [
                                          TextFormField(
                                            validator:(value){
                                              if(value==null || value.isEmpty ||!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                  .hasMatch(value)){
                                                return "invalid email address";
                                              }
                                              return null;
                                            },
                                              decoration: InputDecoration(
                                                  fillColor:
                                                      Colors.grey.shade100,
                                                  filled: true,
                                                  hintText: "Email",
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)))),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          TextFormField(validator:(value){
                                            if (value ==null || value.isEmpty || value.length <8){
                                              return "invalid password";
                                            }
                                            return null;
                                          },
                                            decoration: InputDecoration(
                                                fillColor: Colors.grey.shade100,
                                                filled: true,
                                                hintText: "Password",
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10))),
                                            style: TextStyle(),
                                            obscureText: true,
                                          ),
                                          SizedBox(height: 10),
                                          SizedBox(
                                              width: 400,
                                              child: ElevatedButton(
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                  MaterialStateProperty
                                                      .resolveWith<Color>(
                                                        (Set<MaterialState> states) {
                                                      if (states.contains(
                                                          MaterialState.pressed))
                                                        return Colors.blue;
                                                      return Colors.teal; // Use the component's default.
                                                    },
                                                  ),
                                                ),
                                                child: Text("Login"),
                                                onPressed: () {if(_formKey.currentState!.validate()){
                                                  Navigator.pushNamed(context,RouteGenerator.home);
                                                }},
                                              )),
                                          Row(children: [
                                            Text("Not registered yet?"),
                                            TextButton(
                                              child: Text("Create Account"),
                                              onPressed: () {Navigator.pushNamed(context,RouteGenerator.signup);},
                                            )
                                          ])
                                        ],
                                      ))
                                ])))
                    )],
                ))));
  }
}

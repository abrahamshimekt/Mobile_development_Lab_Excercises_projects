import 'package:flutter/material.dart';
import '../routes.dart';
class Login extends StatefulWidget {
  const Login();

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 20, top: 100, right: 20),
            child:Column(
              children: [
                Center(
                    child: Image.asset("assets/images/img.png",
                        fit: BoxFit.cover)),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Column(
                  children: [
                    Text("Login"),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: "Email"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "password")),
                    SizedBox(height: 20,),
                    Center(
                        child: ElevatedButton(
                      child: Text("Login"),
                      onPressed: () {Navigator.of(context)?.pushNamed(RouteGenerator.home);},
                    )),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        TextButton(
                          child: Text("Don't have account?"),
                          onPressed: () {},
                        ),
                        SizedBox(width: 80),
                        ElevatedButton(child:Text("Signup"),
                        onPressed: (){Navigator.of(context)?.pushNamed(RouteGenerator.signup);},)
                      ],
                    )
                  ],
                ))
              ],
            ))));
  }
}

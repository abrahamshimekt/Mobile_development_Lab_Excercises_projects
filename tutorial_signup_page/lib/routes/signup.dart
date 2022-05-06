import "package:flutter/material.dart";

class Signup extends StatefulWidget {
  const Signup();

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/signup.jpg"),
                    fit: BoxFit.cover)),
            child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar:
                    AppBar(backgroundColor: Colors.transparent, elevation: 0),
                body: Stack(children: [
                  Container(
                      padding: EdgeInsets.only(left: 150, top: 100),
                      child: Text("Sign Up")),
                  SingleChildScrollView(
                      child: Container(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  child: Column(children: [
                                    TextField(
                                        style: TextStyle(color: Colors.white),
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                    color: Colors.black)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                    color: Colors.black)),
                                            hintText: "Full Name",
                                            labelText: "Full name",
                                            suffixIcon: Icon(Icons.person),
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10)))),
                                    SizedBox(height: 10),
                                    TextField(
                                        style: TextStyle(color: Colors.white),
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                    color: Colors.black)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                    color: Colors.black)),
                                            hintText: "username",
                                            labelText: "Username",
                                            suffixIcon: Icon(Icons.person),
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10)))),
                                    SizedBox(height: 10),
                                    TextField(
                                        style: TextStyle(color: Colors.white),
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                    color: Colors.black)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                    color: Colors.black)),
                                            hintText: "email",
                                            labelText: "Email",
                                            suffixIcon: Icon(Icons.email),
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10)))),
                                    SizedBox(height: 10),
                                    TextField(
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                    color: Colors.black)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                    color: Colors.black)),
                                            hintText: "password",
                                            labelText: "Password",
                                            suffixIcon: Icon(Icons.password),
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10)))),
                                    SizedBox(height: 10),
                                    TextField(
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                    color: Colors.black)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                    color: Colors.black)),
                                            hintText: "confirm password",
                                            labelText: "confirm password",
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10)))),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(children: [
                                      Text('Register as',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 27,
                                              fontWeight: FontWeight.w700)),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(children: [
                                        Checkbox(
                                            value: isChecked,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                isChecked = value!;
                                              });
                                            }),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Checkbox(
                                            value: isChecked,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                isChecked = value!;
                                              });
                                            })
                                      ]),
                                      SizedBox(
                                        height: 40,
                                      ),
                                    ]),
                                    SizedBox(height: 20),
                                    SizedBox(width:400,child:ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                              (Set<MaterialState> states) {
                                            if (states.contains(MaterialState.pressed))
                                              return Colors.blue;
                                            return Colors.teal; // Use the component's default.
                                          },
                                        ),
                                      ),
                                      child:Text("Sign up"),
                                      onPressed: (){},
                                    )),
                                    SizedBox(height: 10,),

                                    Row(children: [Text("already a user?"),TextButton(child:Text("login"),onPressed: (){},)],)
                                  ])),


                            ],
                          ))),
                  Positioned(bottom:40,left:5,right:5,child:Container(width:500,height: 1,color:Colors.black))
                ]))));
  }
}

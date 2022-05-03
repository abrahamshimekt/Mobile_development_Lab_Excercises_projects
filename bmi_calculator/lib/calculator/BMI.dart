import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMI extends StatelessWidget {
  const BMI();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
        home: Scaffold(
            appBar: AppBar(),
            body: Container(
              margin: EdgeInsets.all(10),
                child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                Card(
                    child: Column(
                  children: [Icon(Icons.male), Text("male")],
                )),
                Card(
                    child: Column(
                  children: [Icon(Icons.female), Text("female")],
                ))
              ]),
              Container(
                width:500,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                Text("Height"),
                Text("346cm"),
                // Slider(
                //     value: 20,
                //     min: 1.0,
                //     max: 10.0,
                //     divisions: 10,
                //     onChanged: (double newValue) {})
              ])),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                Card(
                    child: Column(children: [
                  Text("weight"),
                  Text("56"),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove_circle),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.add_circle),
                        onPressed: () {},
                      )
                    ],
                  )
                ])),
                Card(
                    child: Column(children: [
                  Text("height"),
                  Text("167"),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove_circle),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.add_circle),
                        onPressed: () {},
                      )
                    ],
                  )
                ]))
              ]),
              Container(
                width: 500,
                  color: Colors.pinkAccent,
                  child: TextButton(
                    child: Text("Calculat"),
                    onPressed: () {},
                  ))
            ]))));
  }
}

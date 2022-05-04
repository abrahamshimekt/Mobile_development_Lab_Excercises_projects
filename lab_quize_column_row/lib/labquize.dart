import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Demo")),
            body: Row(
              children: [
                Container(
                  width:300,
                    height: 400,
                    decoration: BoxDecoration(border:Border.all()),
                    child: Container(decoration:BoxDecoration(border: Border.all()),child:Column(
                  children: [

                    Text("strawberry Pavlova"),
                    SizedBox(height: 20,),
                    Container(decoration:BoxDecoration(border: Border.all()),child:
                    Text(
                        "jtjlkajlkafknacmnjiotuaaijkfjkakjjfkajkuitjkakjjkjtjlkajlkafknacmnjiotuaaijkfjkakjjfkajkuitjkakjjkjtjlkajlkafknacmnjiotuaaijkfjkakjjfkajkuitjkakjjkjtjlkajlkafknacmnjiotuaaijkfjkakjjfkajkuitjkakjjk")),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(border: Border.all()),
                        width:300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        SizedBox(
                          width: 20,
                        ),
                        Text("170 reverse")
                      ],
                    )),
                    SizedBox(height: 20,),
                    Container(
                        width:300,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [Icon(Icons.add), Text("prep"), Text("23")],
                        ),
                        Column(
                          children: [Icon(Icons.add), Text("prep"), Text("23")],
                        ),
                        Column(
                          children: [Icon(Icons.add), Text("prep"), Text("23")],
                        )
                      ],
                    ))
                    ],
                ))),

                Container(
                  height: 400,
                    child: Image.asset("assets/images/img.png"))
              ],
            )));
  }
}

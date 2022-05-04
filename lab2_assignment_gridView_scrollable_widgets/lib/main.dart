import 'package:flutter/material.dart';

void main() {
  runApp(Lab2_assingment());
}

class Lab2_assingment extends StatefulWidget {
  Lab2_assingment();

  @override
  State<Lab2_assingment> createState() => _Lab2_assingmentState();
}

class _Lab2_assingmentState extends State<Lab2_assingment> {
  final is_stared = false;
  final List<Widget> _images = [
    Container(
        child: Stack(children: [

          Image(image: AssetImage("assets/images/img.png"),width: 300,height: 200,fit:BoxFit.cover),
          Align(alignment: Alignment.bottomCenter,child:Container(width: 300,height: 70,color:Colors.black.withOpacity(0.5))),
          Positioned(bottom: 25, left: 5, child: Text("Robot",style:TextStyle(color:Colors.white,fontSize:20))),

          Positioned(bottom: 10, left: 5, child: Text("Future slaves",style:TextStyle(color:Colors.white,))),
          Positioned(bottom:15,right:5,child:IconButton(icon: Icon(Icons.star_outline,color:Colors.white), onPressed: () {})),

        ])),
    Container(
        child: Stack(children: [

          Image(image: AssetImage("assets/images/img_1.png"),width: 300,height: 200,fit:BoxFit.cover),
          Align(alignment: Alignment.bottomCenter,child:Container(width: 300,height: 70,color:Colors.black.withOpacity(0.5))),
          Positioned(bottom: 25, left: 5, child: Text("Robot",style:TextStyle(color:Colors.white,fontSize:20))),

          Positioned(bottom: 10, left: 5, child: Text("Future slaves",style:TextStyle(color:Colors.white))),
          Positioned(bottom:15,right:5,child:IconButton(icon: Icon(Icons.star_outline,color:Colors.white), onPressed: () {})),

        ])),
    Container(
        child: Stack(children: [

          Image(image: AssetImage("assets/images/img_2.png"),width: 300,height: 200,fit:BoxFit.cover),
          Align(alignment: Alignment.bottomCenter,child:Container(width: 300,height: 70,color:Colors.black.withOpacity(0.5))),
          Positioned(bottom: 25, left: 5, child: Text("Robot",style:TextStyle(color:Colors.white,fontSize:20),)),

          Positioned(bottom: 10, left: 5, child: Text("Future slaves",style:TextStyle(color:Colors.white,))),
          Positioned(bottom:15,right:5,child:IconButton(icon: Icon(Icons.star_outline,color:Colors.white), onPressed: () {})),

        ])),
    Container(
        child: Stack(children: [

          Image(image: AssetImage("assets/images/img_3.png"),width: 300,height: 200,fit:BoxFit.cover),
          Align(alignment: Alignment.bottomCenter,child:Container(width: 300,height: 70,color:Colors.black.withOpacity(0.5))),
          Positioned(bottom: 25, left: 5, child: Text("Robot",style:TextStyle(color:Colors.white,fontSize:20))),

          Positioned(bottom: 10, left: 5, child: Text("Future slaves",style:TextStyle(color:Colors.white))),
          Positioned(bottom:15,right:5,child:IconButton(icon: Icon(Icons.star_outline,color:Colors.white), onPressed: () {})),

        ])),
    Container(
        child: Stack(children: [

          Image(image: AssetImage("assets/images/img_4.png"),width: 300,height: 200,fit:BoxFit.cover),
          Align(alignment: Alignment.bottomCenter,child:Container(width: 300,height: 70,color:Colors.black.withOpacity(0.5))),
          Positioned(bottom: 25, left: 5, child: Text("Robot",style:TextStyle(color:Colors.white,fontSize:20))),

          Positioned(bottom: 10, left: 5, child: Text("Future slaves",style:TextStyle(color:Colors.white))),
          Positioned(bottom:15,right:5,child:IconButton(icon: Icon(Icons.star_outline,color:Colors.white), onPressed: () {})),

        ])),
    Container(
        child: Stack(children: [

          Image(image: AssetImage("assets/images/img_5.png"),width: 300,height: 200,fit:BoxFit.cover),
          Align(alignment: Alignment.bottomCenter,child:Container(width: 300,height: 70,color:Colors.black.withOpacity(0.5))),
          Positioned(bottom: 25, left: 5, child: Text("Robot",style:TextStyle(color:Colors.white,fontSize:20))),

          Positioned(bottom: 10, left: 5, child: Text("Future slaves",style:TextStyle(color:Colors.white))),
          Positioned(bottom:15,right:5,child:IconButton(icon: Icon(Icons.star_outline,color:Colors.white), onPressed: () {})),

        ])),
    Container(
        child: Stack(children: [

          Image(image: AssetImage("assets/images/img_6.png"),width: 300,height: 200,fit:BoxFit.cover),
          Align(alignment: Alignment.bottomCenter,child:Container(width: 300,height: 70,color:Colors.black.withOpacity(0.5))),
          Positioned(bottom: 25, left: 5, child: Text("Robot",style:TextStyle(color:Colors.white,fontSize:20))),

          Positioned(bottom: 10, left: 5, child: Text("Future slaves",style:TextStyle(color:Colors.white))),
          Positioned(bottom:15,right:5,child:IconButton(icon: Icon(Icons.star_outline,color:Colors.white), onPressed: () {})),

        ])),
    Container(
        child: Stack(children: [

          Image(image: AssetImage("assets/images/img_7.png"),width: 300,height: 200,fit:BoxFit.cover),
          Align(alignment: Alignment.bottomCenter,child:Container(width: 300,height: 70,color:Colors.black.withOpacity(0.5))),
          Positioned(bottom: 25, left: 5, child: Text("Robot",style:TextStyle(color:Colors.white,fontSize:20))),
          Positioned(bottom: 10, left: 5, child: Text("Future slaves",style:TextStyle(color:Colors.white))),
          Positioned(bottom:15,right:5,child:IconButton(icon: Icon(Icons.star_outline,color:Colors.white), onPressed: () {})),

        ])),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: GridView.builder(
                padding: const EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    maxCrossAxisExtent: 300),
                itemCount: _images.length,
                itemBuilder: (BuildContext context, int index) {
                  return _images[index];
                })));
  }
}

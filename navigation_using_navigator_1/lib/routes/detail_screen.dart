import "package:flutter/material.dart";

class DetailScreen extends StatelessWidget {
  final String image;
  final String tag;
  final String description;
  const DetailScreen(this.image,this.tag,this.description);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(tag),
        ),
        body:Container(padding:EdgeInsets.all(10),child:Column(children:[GestureDetector(
    child:Hero(
      tag:tag,//must be the same for both screens
      child: Image.network(image,width:400,height:500,fit:BoxFit.cover),),
    onTap: () {
    Navigator.pop(context);
    }),ClipRRect(borderRadius:BorderRadius.circular(5.0),child:Container(padding:EdgeInsets.all(20),decoration:BoxDecoration(borderRadius:BorderRadius.circular(5.0),color: Colors.white,boxShadow: [BoxShadow(color: Colors.black,offset:Offset(0.0,2.0),blurRadius:6.0)]),child:Text(description)))])));
  }
}

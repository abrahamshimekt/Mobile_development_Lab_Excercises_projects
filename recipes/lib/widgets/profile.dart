import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget{
  const Profile({Key? key,this.imageProvider,this.imageRadius=20}):super(key:key);
  final ImageProvider? imageProvider;
  final double imageRadius;
  @override
  Widget build(BuildContext){
    return CircleAvatar(
      backgroundColor:Colors.white,
      radius:imageRadius,
      child:CircleAvatar(
        radius: imageRadius -5,
        backgroundImage:imageProvider
      )
    );
  }

}
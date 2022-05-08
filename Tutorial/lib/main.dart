import 'package:flutter/material.dart';
import 'package:tutorial/routes.dart';
import 'package:provider/provider.dart';
import 'package:tutorial/routes/home.dart';

import 'models/counter.dart';

void main(){
  runApp(TutorialApp());
}
class TutorialApp extends StatelessWidget{
  const TutorialApp();
  @override
  Widget build (BuildContext context){
    return ChangeNotifierProvider(
        create:(context)=>CounterModel(),
      child:MaterialApp(initialRoute: RouteGenerator.login,
        onGenerateRoute: RouteGenerator.generateRoute,)
    );
  }
}
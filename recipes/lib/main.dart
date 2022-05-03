import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes/routes/fooderlich.dart';
import "package:recipes/routes/fooderlich.dart";
import 'package:recipes/theme/fooderlichTheme.dart';
import 'package:recipes/widgets/embeded_video.dart';

void main() {
  runApp(const RecipeApp ());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: theme,
      home:VideoPlayerScreen()
    );
  }
}


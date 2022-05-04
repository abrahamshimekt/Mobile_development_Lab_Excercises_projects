import 'package:flutter/material.dart';
import 'package:recipes/widgets/profile.dart';

import '../theme/fooderlichTheme.dart';

class AutherCard extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;
  const AutherCard(
      {Key? key,
      required this.authorName,
      required this.title,
      this.imageProvider})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
          Profile(
            imageProvider: imageProvider,
            imageRadius: 28,
          ),
          // 2
          const SizedBox(width: 8),
          // 3
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text(
              authorName,
              style: FooderlichTheme.darkTextTheme.headline2,
            ),
            Text(
              title,
              style: FooderlichTheme.darkTextTheme.headline3,
            )
          ]),
          IconButton(icon:Icon(Icons.favorite),iconSize:30,
          color:Colors.red[400],
          onPressed:(){const snackBar = SnackBar(content:Text("favorite is pressed"));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);})
        ]));
  }
}

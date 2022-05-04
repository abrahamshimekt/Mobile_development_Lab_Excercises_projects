import 'package:flutter/material.dart';
class Movie extends StatelessWidget {
  const Movie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: <Widget>[
          SliverAppBar(
            stretch: true,
            onStretchTrigger: () {
              // Function callback for stretch
              return Future<void>.value();
            },
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
              centerTitle: true,
              title: const Text('Science Fiction'),
              background: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.network(
                    'https://static2.srcdn.com/wordpress/wp-content/uploads/2020/04/10-Awesome-Sci-Fi-Movies-You-Can-Stream-Today-On-Disney-Plus-featured-image.jpg',
                    fit: BoxFit.cover,
                  ),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.0, 0.5),
                        end: Alignment.center,
                        colors: <Color>[
                          Color(0x60000000),
                          Color(0x00000000),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              const <Widget>[
                ListTile(
                  title: Text('The Matrix'),
                  subtitle: Text('see more'),
                ),
                ListTile(
                  title: Text('West World'),
                  subtitle: Text('see more'),
                ),
                ListTile(
                  title: Text('West World'),
                  subtitle: Text('see more'),
                ),
                ListTile(
                  title: Text('West World'),
                    subtitle: Text('see more'),
                ),
                ListTile(
                  title: Text('West World'),
                  subtitle: Text('see more'),
                ),ListTile(
                title: Text('West World'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),ListTile(
                title: Text('West World'),
                subtitle: Text('see more'),
              )
                ,
                ListTile(
                  title: Text('West World'),
                  subtitle: Text('see more'),
                )
                // ListTiles++
              ],
            ),
          ),
        ],
      ),
    );
  }
}

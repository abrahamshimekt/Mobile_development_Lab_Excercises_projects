import "package:flutter/material.dart";
import 'package:lab_assignment/routes.dart';

class Home extends StatefulWidget {
  const Home();

  @override
  State<Home> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> with TickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // return DefaultTabController(
    //     length: 3,
    //     initialIndex: 0,
    //     child:
    return Scaffold(
        appBar: AppBar(
          bottomOpacity:0.5,
          foregroundColor:Colors.black,
          iconTheme:IconThemeData(color:Colors.teal,size:25,opacity:0.8),
          primary:true,
          shadowColor:Colors.yellow,
          titleSpacing:20,
          toolbarHeight:40,
          toolbarOpacity:0.9,
          leading:Icon(Icons.school),
            actions:[IconButton(icon:Icon(Icons.settings),onPressed:(){})],
            backgroundColor: Colors.grey[300],
            title: Text(
              "Similars",
            ),
            centerTitle: true,
            bottom: TabBar(
                controller: _controller,
                indicatorColor: Colors.black,
                automaticIndicatorColorAdjustment: true,
                enableFeedback: true,
                // indicator:BoxDecoration(shape:BoxShape.rectangle),
                // indicatorPadding:EdgeInsets.all(10),
                // isScrollable:true,
                labelColor: Colors.blue,
                tabs: [
                  Tab(
                    icon: Icon(Icons.people),
                  ),
                  Tab(icon: Icon(Icons.theaters_outlined)),
                  Tab(icon: Icon(Icons.sunny_snowing))
                ])),
        body: TabBarView(controller: _controller, children: [
          Container(
              margin: EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 400,
                        height: 300,
                        color: Colors.black.withOpacity(0.1),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 50,
                                top: 20,
                                child: ClipOval(
                                    child: Image.asset(
                                        "assets/images/img_1.png",
                                        width: 260,
                                        height: 260,
                                        fit: BoxFit.cover))),
                            Positioned(
                                bottom: 60,
                                right: 100,
                                child: Container(
                                    color: Colors.black.withOpacity(0.5),
                                    width: 100,
                                    height: 30,
                                    child: Text("Angelina ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25))))
                          ],
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom: 50),
                        child: Stack(children: [
                          Image.asset("assets/images/img_2.png",
                              width: 400, height: 300, fit: BoxFit.cover),
                          Positioned(
                            left: 5,
                            child: Text("carrier",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13)),
                          ),
                          Positioned(
                              left: 45,
                              child: Icon(Icons.wifi,
                                  color: Colors.white, size: 13)),
                          Positioned(
                              left: 160,
                              child: Text("7:45 AM",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13))),
                          Positioned(
                              right: 5,
                              child: RotatedBox(
                                  quarterTurns: 1,
                                  child: Icon(Icons.battery_full_outlined,
                                      color: Colors.white, size: 13))),
                          Positioned(
                            left: 15,
                            child: Icon(Icons.arrow_back_ios,
                                color: Colors.white, size: 20),
                            top: 30,
                          ),
                          Positioned(
                              top: 30,
                              right: 10,
                              child: Row(children: [
                                Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.more_vert_outlined,
                                    color: Colors.white, size: 20)
                              ])),
                          Positioned(
                              bottom: 10,
                              left: 160,
                              child: Text("Sayat ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)))
                        ]))
                  ])),
          Center(
              child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(10),
                  children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context)?.pushNamed(RouteGenerator.movie);
                    },
                    child: Container(
                        child: Card(
                            child: Image.network(
                                "https://static2.srcdn.com/wordpress/wp-content/uploads/2020/04/10-Awesome-Sci-Fi-Movies-You-Can-Stream-Today-On-Disney-Plus-featured-image.jpg",
                                width: 300,
                                fit: BoxFit.cover)))),
                Container(
                    child: Card(
                        child: Image.network(
                            "https://th.bing.com/th/id/R.f7b88f82e5596ed1fe7d3c008fdb11ea?rik=wSm1QIzEZJymIQ&pid=ImgRaw&r=0",
                            width: 300,
                            fit: BoxFit.cover))),
                    Container(
                        child: Card(
                            child: Image.network(
                                "https://th.bing.com/th/id/R.1c904da0d55b474e54cf5be75cd85a4f?rik=TwSsxTM8rRjyVQ&pid=ImgRaw&r=0",
                                width: 300,
                                fit: BoxFit.cover))),
                    Container(
                        child: Card(
                            child: Image.network(
                                "https://2.bp.blogspot.com/-fFI5XyfIePM/V-DhPIMpF3I/AAAAAAAAPfA/yGZ_e27MUDkn3_x1kMhPtRYW2RJjjoMgwCLcB/s1600/crime-movies-best-full-movie-201.jpg",
                                width: 300,
                                fit: BoxFit.cover))),
                    Container(
                        child: Card(
                            child: Image.network(
                                "https://static2.srcdn.com/wordpress/wp-content/uploads/2020/04/10-Awesome-Sci-Fi-Movies-You-Can-Stream-Today-On-Disney-Plus-featured-image.jpg",
                                width: 300,
                                fit: BoxFit.cover))),
                    Container(
                        child: Card(
                            child: Image.network(
                                "https://static2.srcdn.com/wordpress/wp-content/uploads/2020/04/10-Awesome-Sci-Fi-Movies-You-Can-Stream-Today-On-Disney-Plus-featured-image.jpg",
                                width: 300,
                                fit: BoxFit.cover))),
              ])),
          Center(child: Text("God are u dumb"))
        ]));
  }
}

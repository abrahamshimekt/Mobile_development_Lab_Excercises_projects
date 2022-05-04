import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lab extends StatefulWidget {
  const Lab({Key? key}) : super(key: key);

  @override
  State<Lab> createState() => _LabState();
}

class _LabState extends State<Lab> {
  int bottomIndex =0;
  final views =[
    Container(child:GridView(
      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 4,
      //   childAspectRatio: 1/2,
      // ),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 4,
        childAspectRatio: 1/2,
      ),
      children:[
        Container(color:Colors.red),
        Container(color:Colors.black),
        Container(color:Colors.teal),
        Container(color:Colors.red),
        Container(color:Colors.blue),
        Container(color:Colors.red),
        Container(color:Colors.pink),
        Container(color:Colors.red)
      ]
    )),
    Container(color:Colors.red),
    Container(color:Colors.yellow)];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
                height: 300,
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                        child: Image.network(
                      "https://th.bing.com/th/id/OIP.-Oeg-0y23meUoOHTZ9CwMgHaE8?pid=ImgDet&rs=1",
                      width: 150,
                      height: 150,
                    )),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("yutauiuioafuiofajsj"),
                              Text("yutauiuioafuiofajsj"),
                            ],
                          ),
                          Icon(Icons.star)
                        ])
                  ],
                )),
            ListTile(
              leading: Icon(Icons.add_call),
              title: Text("yutauiuioafuiofajsj"),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("yutauiuioafuiofajsj"),
            ),
            ListTile(
                leading: Icon(Icons.facebook),
                title: Text("yutauiuioafuiofajsj"))
          ],
        ),
      ),
      body:views[bottomIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomIndex,
          onTap:(int index){
        setState(() {
          bottomIndex =index;
        });
          }
          ,items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "favorite"),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: "phone")
      ]),
    );
  }
}

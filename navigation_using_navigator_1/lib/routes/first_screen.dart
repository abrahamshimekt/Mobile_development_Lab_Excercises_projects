import "package:flutter/material.dart";
import "package:navigation_using_navigator_1/routes/detail_screen.dart";

class FirstScreen extends StatelessWidget {
  const FirstScreen();
  static const List<DetailScreen> _details = [
    DetailScreen(
        "https://th.bing.com/th/id/OIP.HSR0s00KQmONYpTZHdC4DwHaK5?pid=ImgDet&rs=1",
        "The matrix","Six months after the events depicted in The Matrix, Neo has proved to be a good omen for the free humans, as more and more humans are being freed from the matrix and brought to Zion, the one and only stronghold of the Resistance. Neo himself has discovered his superpowers including super speed, ability to see the codes of the things inside the matrix and a certain degree of pre-cognition."),
    DetailScreen(
        "https://th.bing.com/th/id/R.ed7ed2d271425890eefcd2c6dab3b8b7?rik=95AuCThJg72PEA&pid=ImgRaw&r=0",
        "AI Rising ","On a lonely mission to Alpha Centauri, Milutin is teamed up with Nimani 1345, a female cyborg designed to fulfill his every need. At first thrilled to be able to control her, Sebastian grows tired of having his desires fulfilled so easily. Longing for human intimacy, Sebastian alters Nimani's programmed responses, but in doing so he risks the mission's security — and his own life."),
    DetailScreen(
        "https://www.intofilm.org/intofilm-production/scaledcropped/970x546https:/s3-eu-west-1.amazonaws.com/images.cdn.filmclub.org/film__2710-ai-artificial-intelligence--hi_res-5b358920.jpg/film__2710-ai-artificial-intelligence--hi_res-5b358920.jpg",
        "AI Artificial Intelligence","David, a robotic boy—the first of his kind programmed to love—is adopted as a test case by a Cybertronics employee and his wife. Though he gradually becomes their child, a series of unexpected circumstances make this life impossible for David. Without final acceptance by humans or machines, David embarks on a journey to discover where he truly belongs, uncovering a world in which the line between robot and machine is both vast and profoundly thin"),
    DetailScreen(
        "https://th.bing.com/th/id/OIP.QGxBQK4uV76AhO-bS40QPQHaD_?pid=ImgDet&rs=1",
        "Terminator","In the post-apocalyptic future, reigning tyrannical supercomputers teleport a cyborg assassin known as the 'Terminator' back to 1984 to kill Sarah Connor, whose unborn son is destined to lead insurgents against 21st century mechanical hegemony. Meanwhile, the human-resistance movement dispatches a lone warrior to safeguard Sarah. Can he stop the virtually indestructible killing machine?"),
    DetailScreen(
        "https://hagertyjourn.com/wp-content/uploads/2015/02/theimitationgame.jpg",
        "The Imitation Game","Based on the real life story of legendary cryptanalyst Alan Turing, the film portrays the nail-biting race against time by Turing and his brilliant team of code-breakers at Britain's top-secret Government Code and Cypher School at Bletchley Park, during the darkest days of World War II"),
    DetailScreen(
        "https://th.bing.com/th/id/R.b471222af325b198d133c9c5699b23f2?rik=9cyoOSJfgkv21A&pid=ImgRaw&r=0",
        "AI love you","A modern love story set in the near future where an AI building is powered by human feelings. Due to a software glitch, it falls in love with a real girl, escapes the building into the body of a real man, and tries to win her affections.")

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("AI movies")),
        body: Container(
          padding:EdgeInsets.all(10),
            child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
              GestureDetector(
                  child: Hero(
                    tag: "The matrix",
                    child: Image.network(
                        "https://th.bing.com/th/id/OIP.HSR0s00KQmONYpTZHdC4DwHaK5?pid=ImgDet&rs=1",width:300,height:400,fit:BoxFit.cover),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (contex) => _details[0]));
                  }),
              GestureDetector(
                  child:Hero(tag:"AI Rising",child: Image.network("https://th.bing.com/th/id/R.ed7ed2d271425890eefcd2c6dab3b8b7?rik=95AuCThJg72PEA&pid=ImgRaw&r=0",width:300,height:400,fit:BoxFit.cover)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => _details[1]));
                  }),
              GestureDetector(
                  child:Hero(tag:"AI Artificial Intelligence",child: Image.network("https://www.intofilm.org/intofilm-production/scaledcropped/970x546https:/s3-eu-west-1.amazonaws.com/images.cdn.filmclub.org/film__2710-ai-artificial-intelligence--hi_res-5b358920.jpg/film__2710-ai-artificial-intelligence--hi_res-5b358920.jpg",width:300,height:400,fit:BoxFit.cover)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => _details[2]));
                  }),
              GestureDetector(
                  child:Hero(tag:"Terminator",child: Image.network("https://th.bing.com/th/id/OIP.QGxBQK4uV76AhO-bS40QPQHaD_?pid=ImgDet&rs=1",width:300,height:400,fit:BoxFit.cover)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => _details[3]));
                  })
                  ,
                  GestureDetector(
                      child:Hero(tag:"The Imitation Game",child: Image.network("https://hagertyjourn.com/wp-content/uploads/2015/02/theimitationgame.jpg",width:300,height:400,fit:BoxFit.cover)),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => _details[4]));
                      }),
                  GestureDetector(
                      child:Hero(tag:"AI Love you",child: Image.network("https://th.bing.com/th/id/R.b471222af325b198d133c9c5699b23f2?rik=9cyoOSJfgkv21A&pid=ImgRaw&r=0",width:300,height:400,fit:BoxFit.cover)),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => _details[5]));
                      })
            ])));
  }
}

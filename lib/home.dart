import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class home extends StatefulWidget {

   home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  double scrollposition=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ PageView(
          onPageChanged: (val) {

setState(() {
scrollposition=val.toDouble();
});

          },
          children: [
      Onboard(img: "assets/one.jpg"),
      Onboard(img: "assets/two.jpg"),
      Onboard(img: "assets/three.jpg")
      
          ],
        ),

        Align(alignment: Alignment.bottomCenter,child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [

             new DotsIndicator(
           dotsCount: 3,
            position: scrollposition,
            decorator: DotsDecorator(
              activeColor: Colors.black
            ),

)

,InkWell(child: Text("Skip To The App",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),))
            ],)
          ],
        ),)
      ]),
    );
  }
}

class Onboard extends StatelessWidget {
  final String img;
const Onboard({super.key,required this.img});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.height,
          child:Image(image: AssetImage(img))),
      ),
      
    );
  }
}

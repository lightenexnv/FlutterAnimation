import 'package:flutter/material.dart';
import 'package:flutteranimations/pages/HeroAnimation.dart';
import 'package:flutteranimations/pages/tweenanimation.dart';

import 'animatedwidgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Column(
      children: [
        navigationCard(context: context, title: "Animated Widgets Page", destination: Animatedwidgets()),
        navigationCard(context: context, title: "Tween Animation Page", destination: Tweenanimation()),
        navigationCard(context: context, title: "Hero Animation Page", destination: Heroanimation()),
        SizedBox(height: 20,),
        GestureDetector(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Heroanimation()));
        },
        child: Hero(tag: "hero-image",
            child: Container(height: 120,width: 120,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16)
            ),child: Icon(Icons.zoom_in,
                color: Colors.white,
                    size: 60,),
              )
        ),
        )
      ],
    )),
    );
  }
}
Widget navigationCard({
  required BuildContext context,
  required String title,
  required Widget destination
}){
  return GestureDetector(onTap:(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> destination));
  },child: Center(
    child: Card(
      elevation: 4,
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    ),
  ),);
}
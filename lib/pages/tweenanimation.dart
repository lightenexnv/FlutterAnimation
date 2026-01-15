import 'package:flutter/material.dart';

class Tweenanimation extends StatefulWidget {
  const Tweenanimation({super.key});

  @override
  State<Tweenanimation> createState() => _TweenanimationState();
}

class _TweenanimationState extends State<Tweenanimation> {

  late Future<bool> zoomFeature ;
  @override

  void initState(){
    super.initState();
    zoomFeature = Future.delayed(Duration(milliseconds: 2000),()=> true);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        child:Column(
          children: [
            TweenAnimationBuilder(tween: Tween<double>(begin: 0, end: 1), duration: Duration(milliseconds: 2000), builder: (context, value, child){
              return Opacity(
                opacity: value,
                child: Padding(padding: EdgeInsets.only(top: value*200),
                    child: child)
              );
            },
                child: FutureBuilder(future: zoomFeature, builder: (context, snapshot){
                  return TweenAnimationBuilder(tween: Tween<double>(begin: 0,end: 1), duration: Duration(milliseconds: 2600), builder: (context, scaleValue, child){
                    return Transform.scale(
                      scale:scaleValue,
                      child: Center(child: Text("I Am Mr. India",style: TextStyle(fontSize: 35),)),

                    );
                  });
                })
            ),
          ],
        ),
      )),
    );
  }
}

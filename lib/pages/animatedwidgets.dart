import 'package:flutter/material.dart';

class Animatedwidgets extends StatefulWidget {
  const Animatedwidgets({super.key});

  @override
  State<Animatedwidgets> createState() => _HomePageState();
}

class _HomePageState extends State<Animatedwidgetsgi> {
  final double _initialMargin = 10;
  final double _initialHeight = 400;
  final double _initialWidth = 200;
  final Color _initialColor = Colors.blue;
  final double _initialOpacity = 1;

  late double margin = _initialMargin;
  late double height = _initialHeight;
  late double width = _initialWidth;
  late Color color = _initialColor;
  late double opacity = _initialOpacity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(seconds: 2),
        width: width,
        height: height,
        margin: EdgeInsets.all(margin),
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => setState(() => margin = 100),
              child: const Text("Animate Margin"),
            ),
            ElevatedButton(
              onPressed: () => setState(() => color = Colors.purple),
              child: const Text("Animate Color"),
            ),
            ElevatedButton(
              onPressed: () => setState(() => height = 600),
              child: const Text("Animate Height"),
            ),
            ElevatedButton(
              onPressed: () => setState(() => width = 150),
              child: const Text("Animate Width"),
            ),
            ElevatedButton(
              onPressed: () => setState(() => opacity = 0),
              child: const Text("Animate Opacity"),
            ),

            const SizedBox(height: 10),

            AnimatedOpacity(
              duration: const Duration(seconds: 2),
              opacity: opacity,
              child: const Text(
                "Hello",
                style: TextStyle(color: Colors.white),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  margin = _initialMargin;
                  height = _initialHeight;
                  width = _initialWidth;
                  color = _initialColor;
                  opacity = _initialOpacity;
                });
              },
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}

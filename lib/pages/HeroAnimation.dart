import 'package:flutter/material.dart';

class Heroanimation extends StatefulWidget {
  const Heroanimation({super.key});

  @override
  State<Heroanimation> createState() => _HeroanimationState();
}
class _HeroanimationState extends State<Heroanimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: "hero-image",
              child: Container(
                height: 280,
                width: 280,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: const Icon(
                  Icons.zoom_in,
                  color: Colors.white,
                  size: 140,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Hero Animation",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "This screen demonstrates a Hero animation in Flutter. "
                    "The icon smoothly transitions from the previous screen "
                    "to this expanded view using the same Hero tag.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        )
      ),
    );
  }
}
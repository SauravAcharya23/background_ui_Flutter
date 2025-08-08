import 'package:flutter/material.dart';

class OrangeCurvedBackground extends StatefulWidget {
  const OrangeCurvedBackground({super.key});

  @override
  State<OrangeCurvedBackground> createState() => _OrangeCurvedBackgroundState();
}

class _OrangeCurvedBackgroundState extends State<OrangeCurvedBackground> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ClipPath(
              child: Container(
                height: MediaQuery.of(context).size.height * .5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFF6B35), // Bright orange
                      Color(0xFFFF8C42), // Lighter orange
                    ]
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
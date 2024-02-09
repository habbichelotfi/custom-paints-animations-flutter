import 'package:flutter/material.dart';

class RotationAnimationExample extends StatefulWidget {
  @override
  _RotationAnimationExampleState createState() =>
      _RotationAnimationExampleState();
}

class _RotationAnimationExampleState extends State<RotationAnimationExample> {
  double _rotationAngle = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rotation Animation'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _rotationAngle += 0.5; // Adjust the rotation speed as needed
            });
          },
          child: Transform.rotate(
            angle: _rotationAngle,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: Center(
                  child: Text(
                "Tap in",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              )),
            ),
          ),
        ),
      ),
    );
  }
}

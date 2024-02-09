import 'package:flutter/material.dart';

class FadeInOutExample extends StatefulWidget {
  const FadeInOutExample({super.key});

  @override
  State<FadeInOutExample> createState() => _FadeInOutExampleState();
}

class _FadeInOutExampleState extends State<FadeInOutExample> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fade-In and Fade-Out')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _isVisible ? 1.0 : 0.0,
              duration: Duration(seconds: 1),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isVisible = !_isVisible;
                });
              },
              child: Text('Toggle Visibility'),
            ),
          ],
        ),
      ),
    );
  }
}

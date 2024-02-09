import 'package:flutter/material.dart';

class SlideInOutExample extends StatefulWidget {
  @override
  _SlideInOutExampleState createState() => _SlideInOutExampleState();
}

class _SlideInOutExampleState extends State<SlideInOutExample> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slide-In and Slide-Out'),
      ),
      body: Center(
        child: AnimatedPositioned(
          duration: Duration(seconds: 1),
          left: _isVisible ? 0 : -100,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isVisible = !_isVisible;
          });
        },
        child: Icon(Icons.swap_horiz),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ColorTransitionExample extends StatefulWidget {
  const ColorTransitionExample({super.key});

  @override
  _ColorTransitionExampleState createState() => _ColorTransitionExampleState();
}

class _ColorTransitionExampleState extends State<ColorTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    _colorAnimation =
        ColorTween(begin: Colors.blue, end: Colors.red).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Color Transition Animation')),
        body: Center(
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    _controller.forward();

                  });
                },
                child: Container(
                    width: 200,
                    height: 200,
                    color: _colorAnimation.value,
                    child: const Center(
                        child: Text('Tap to Change Color',
                            style: TextStyle(color: Colors.white)))))));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

import 'package:custom_paints/animations_widgets/color_transition_example.dart';
import 'package:custom_paints/animations_widgets/fade_in_out_widget.dart';
import 'package:custom_paints/animations_widgets/pulse_animation.dart';
import 'package:custom_paints/animations_widgets/rotation_animation_example.dart';
import 'package:custom_paints/animations_widgets/scale_animation_example.dart';
import 'package:custom_paints/animations_widgets/slide_in_out_widget.dart';
import 'package:custom_paints/animations_widgets/staggered_animation_example.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      home: const MyHomePage(title: 'Flutter Animation Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final List animationExamples = [
      {"title": "Fade in out", "goTo": FadeInOutExample()},
      {"title": "Slide in out", "goTo": SlideInOutExample()},
      {"title": "Rotation animation", "goTo": RotationAnimationExample()},
      {"title": "Scale animation", "goTo": ScaleAnimationExample()},
      {"title": "Color transition", "goTo": ColorTransitionExample()},
      {"title": "Pulse animation", "goTo": PulseAnimationExample()},
      {"title": "Staggered animation", "goTo": StaggeredAnimationExample()}
    ];
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title, style: TextStyle(fontSize: 17))),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              tileColor: Colors.greenAccent.withOpacity(0.3),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) =>
                            animationExamples[index]['goTo']));
              },
              title: Text(
                animationExamples[index]['title'],
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(height: 10);
          },
          itemCount: animationExamples.length,
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

import 'login.dart';

class IntroPage extends StatefulWidget {
  IntroPage({Key key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
          description:
              "Why starve when you have GreaShoppe!! Taste that best, its on time !!",
          backgroundImage: "assets/intro/intro1.png",
          styleTitle: TextStyle(fontSize: 40, color: Colors.white),
          styleDescription: TextStyle(fontSize: 25, color: Colors.white)),
    );
    slides.add(
      new Slide(
          title: "",
          description:
              "Eat the food thst you dream about at affordable prices.",
          backgroundImage: "assets/intro/intro2.jpg",
          styleTitle: TextStyle(fontSize: 40, color: Colors.black),
          styleDescription: TextStyle(fontSize: 25, color: Colors.white)),
    );
  }

  void onDonePress() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,
      colorDot: Colors.red,
      onDonePress: this.onDonePress,
      onSkipPress: this.onDonePress,
    );
  }
}

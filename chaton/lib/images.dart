import 'package:flutter/material.dart';

const _basepath = 'assets';

class Images {
  Images._();

  static const Image1 = '$_basepath/splashlogo.jpg';
  static const Image2 = '$_basepath/food2.jpg';
  static const Image3 = '$_basepath/food3.jpg';
  static const Image4 = '$_basepath/foo.jpg';
}

// class Images1 {
//   Images1._();

//   static const images1 = '$_basepath/slider.jpg';
//   static const images2 = '$_basepath/slider1.jpg';
//   static const images3 = '$_basepath/slider2.png';
//   static const images4 = '$_basepath/slider3.png';
//   static const images5 = '$_basepath/slider4.png';
//   static const images6 = '$_basepath/slider5.png';
// }

List<Map> sliderimage = [
  {'name': 'first', 'iconpath': '$_basepath/slider.jpg'},
  {'name': 'second', 'iconpath': '$_basepath/slider1.png'},
  {'name': 'third', 'iconpath': '$_basepath/slider2.png'},
  {'name': 'four', 'iconpath': '$_basepath/slider3.png'},
  {'name': 'five', 'iconpath': '$_basepath/slider4.png'},
  {'name': 'sixe', 'iconpath': '$_basepath/slider5.png'},
];

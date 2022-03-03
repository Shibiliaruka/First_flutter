import 'package:chaton/images.dart';
import 'package:chaton/loginscreen.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  @override
  void initState() {
    gotoscreen();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset(Images.Image1)),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> gotoscreen() async {
    Future.delayed(Duration(seconds: 5));
    Navigator.push(context, MaterialPageRoute(builder: (cntct) {
      return loginscreen();
    }));
  }
}

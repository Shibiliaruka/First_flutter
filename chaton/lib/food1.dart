import 'package:flutter/material.dart';

import 'menu1.dart';
import 'mini.dart';

class food1 extends StatelessWidget {
  const food1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
      padding: EdgeInsets.only(bottom: 0, top: 10),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          minimenu(),
          menu1(),
        ],
      ),
    );
  }
}

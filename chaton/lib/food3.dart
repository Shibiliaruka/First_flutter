import 'package:chaton/menu2.dart';
import 'package:flutter/material.dart';

import 'menu1.dart';
import 'mini.dart';

class food3 extends StatelessWidget {
  const food3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
      padding: EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          minimenu(),
          menu1(),
        ],
      ),
    );
  }
}

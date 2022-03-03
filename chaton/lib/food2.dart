import 'package:chaton/images.dart';
import 'package:chaton/menu1.dart';
import 'package:chaton/menu2.dart';
import 'package:chaton/mini.dart';
import 'package:chaton/utils.dart';
import 'package:flutter/material.dart';

class food2 extends StatelessWidget {
  const food2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
      padding: EdgeInsets.only(top: 10),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          minimenu(),
          menu2(),
        ],
      ),
    );
  }
}

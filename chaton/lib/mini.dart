import 'package:chaton/utils.dart';
import 'package:flutter/material.dart';

import 'images.dart';

class minimenu extends StatelessWidget {
  const minimenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: SizedBox(
        height: Utils.getScreenHeight(context) * 3 / 20,
        child: ListView.builder(
          //shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (cntxt, index) {
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  // padding: EdgeInsets.only(bottom: 10, top: 10),
                  width: 90,
                  height: 80,

                  //color: Color(0xffFF0000),
                  child: ClipRRect(
                    child: Image.asset(
                      sliderimage[index]['iconpath'],
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Text(sliderimage[index]['name'])
              ],
            );
          },
          itemCount: 6,
        ),
      ),
    );
  }
}

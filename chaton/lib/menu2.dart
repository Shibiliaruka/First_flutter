import 'package:chaton/utils.dart';
import 'package:flutter/material.dart';

import 'images.dart';

class menu2 extends StatelessWidget {
  const menu2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            child: SizedBox(
              height: Utils.getScreenHeight(context) * 11 / 20,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.only(left: 3),
                            //height: Utils.getScreenHeight(context) * 3 / 10,
                            // width: Utils.getScreenWidth(context) * 8 / 9,
                            child: Stack(children: [
                              ClipRRect(
                                child: Image.asset(
                                  Images.Image4,
                                  //fit: BoxFit.fitHeight,
                                ),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: const Radius.circular(20),
                                    topLeft: const Radius.circular(20)),
                              ),
                              Positioned(
                                  child: Container(
                                alignment: Alignment.bottomRight,
                                padding: EdgeInsets.all(20),
                                child: Text(
                                  'FOOD',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueAccent),
                                ),
                              ))
                            ]),
                          )),
                          Expanded(
                              child: Container(
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            //padding: EdgeInsets.only(right: 10),
                            height: Utils.getScreenHeight(context) * 3.5 / 10,
                            // width: Utils.getScreenWidth(context) * 8 / 9,
                            child: Center(
                                child: Text(
                              'CONTENTSSSS',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            )),
                            //color: Color(0xff808080),
                          ))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                },
                itemCount: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:chaton/utils.dart';
import 'package:flutter/material.dart';

import 'images.dart';

class menu1 extends StatelessWidget {
  const menu1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
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
                        Container(
                          height: Utils.getScreenHeight(context) * 3 / 10,
                          width: Utils.getScreenWidth(context) * 8 / 9,
                          child: Stack(children: [
                            ClipRRect(
                              child: Image.asset(Images.Image3),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            Positioned(
                                child: Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.only(bottom: 20, right: 20),
                              child: Text(
                                'FOOD',
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueAccent),
                              ),
                            ))
                          ]),
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
      ),
    );
  }
}

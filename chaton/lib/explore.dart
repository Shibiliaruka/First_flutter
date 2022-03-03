import 'package:chaton/food1.dart';
import 'package:chaton/food2.dart';
import 'package:chaton/food3.dart';
import 'package:chaton/food4.dart';
import 'package:flutter/material.dart';

class explore extends StatelessWidget {
  final numberofpages = 4;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
            extendBody: true,
            //backgroundColor: Colors.white,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.grey,
              //title: Text('Explore'),
              elevation: 0,

              flexibleSpace: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TabBar(
                        indicator: BoxDecoration(
                            color: Colors.green[300],
                            borderRadius: BorderRadius.circular(
                              50,
                            )),
                        tabs: [
                          Tab(
                            text: 'FOOD1',
                          ),
                          Tab(
                            text: 'FOOD2',
                          ),
                          Tab(
                            text: 'FOOD3',
                          ),
                          Tab(
                            text: 'FOOD4',
                          ),
                        ]),
                  ],
                ),
              ),
            ),
            body: TabBarView(children: [
              food1(),
              food2(),
              food3(),
              food4(),
            ])),
      ),
    );
  }
}

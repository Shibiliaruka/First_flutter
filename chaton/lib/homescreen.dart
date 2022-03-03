import 'package:chaton/explore.dart';
import 'package:chaton/person.dart';
import 'package:flutter/material.dart';

import 'images.dart';

class sc extends StatefulWidget {
  const sc({
    Key? key,
  }) : super(key: key);

  @override
  _scState createState() => _scState();
}

class _scState extends State<sc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chatbox'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.exit_to_app)),
      ),
      body: ListView.separated(
        itemBuilder: (ctxt, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(Images.Image1),
            ),
            title: Text('person $index'),
            subtitle: Text('typing.. '),
            trailing: Text("1$index :00 AM"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return person();
              }));
            },
          );
        },
        separatorBuilder: (ctxt, index) {
          return Divider();
        },
        itemCount: 30,
      ),

      // child: _widgets.elementAt(_selectedindex),

      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.blueGrey,

      //   child: Container(
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         IconButton(onPressed: () {}, icon: Icon(Icons.home)),
      //         IconButton(
      //             onPressed: () {
      //               Navigator.push(context,
      //                   MaterialPageRoute(builder: (context) {
      //                 return explore();
      //               }));
      //             },
      //             icon: Icon(Icons.explore)),
      //         IconButton(onPressed: () {}, icon: Icon(Icons.account_balance))
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

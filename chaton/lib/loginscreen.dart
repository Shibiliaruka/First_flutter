import 'package:chaton/homescreen.dart';
import 'package:chaton/navigator.dart';
import 'package:chaton/route.dart';
import 'package:flutter/material.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  final control = TextEditingController();
  final control1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: control,
                  decoration: InputDecoration(
                      hintText: ('Type something'),
                      labelText: ('User'),
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                    controller: control1,
                    decoration: InputDecoration(
                        labelText: ('Password'),
                        prefixIcon: Icon(Icons.password),
                        hintText: ('Type something'),
                        border: OutlineInputBorder())),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          checking(context);
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (ctxt) {
                          //   return nav();
                          // }));
                        },
                        child: Text('LOGIN')),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            control.text = "";
                            control1.text = '';
                          });
                        },
                        icon: Icon(Icons.ac_unit_outlined))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void checking(BuildContext context) {
    final _user = control.text;
    final _pass = control1.text;
    if (_user == "") {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text('Wrong password'),
        margin: EdgeInsets.all(20),
        backgroundColor: Colors.redAccent,
      ));
    } else if (_user == _pass) {
      Navigator.pushNamed(
        context,
        Routes.HOMESCREEN,
        arguments: "Home",
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text('Wrong password'),
        margin: EdgeInsets.all(20),
        backgroundColor: Colors.redAccent,
      ));
    }
    ;
  }
}

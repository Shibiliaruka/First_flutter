import 'package:flutter/material.dart';

class person extends StatelessWidget {
  const person({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PERSON'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('person ')),
        ],
      ),
    );
  }
}

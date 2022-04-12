import 'package:flutter/material.dart';

class TestAppBar extends StatelessWidget {
  String name;

  TestAppBar(this.name);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_circle_left),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Text(name),
      backgroundColor: Colors.amber,
    );
  }
}

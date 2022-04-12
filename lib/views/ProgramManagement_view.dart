import 'package:flutter/material.dart';

class ProgramManagement extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Text("Program Management"),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:simplyloose/widgets/top_bar.dart';
import '../widgets/side_bar.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({Key? key}) : super(key: key);

  static String route = "/MyProileView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("MyProfile"),
      ),
    );
  }
}

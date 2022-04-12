import 'package:flutter/material.dart';
import 'package:simplyloose/views/my_profile_view.dart';
import 'package:simplyloose/widgets/side_bar.dart';
import 'package:simplyloose/widgets/test_app_bar.dart';
import 'package:simplyloose/widgets/top_bar.dart';

class AdminScaffold extends StatefulWidget {
  const AdminScaffold({Key? key}) : super(key: key);

  @override
  State<AdminScaffold> createState() => _AdminScaffoldState();
}

class _AdminScaffoldState extends State<AdminScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      body: SideBar(context),
    );
  }
}

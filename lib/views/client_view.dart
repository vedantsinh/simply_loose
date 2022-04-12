import 'package:flutter/material.dart';
import 'package:simplyloose/views/add_user_view.dart';
import 'package:simplyloose/widgets/add_user.dart';
import 'package:simplyloose/widgets/single_user.dart';

import '../models/user.dart';

class ClientsView extends StatefulWidget {
  static String widgetName = "";
  static String route = "/ClientsView";

  //
  // set widgetNameString(String name) {
  //   widgetName = name;
  // }

  @override
  State<ClientsView> createState() => _ClientsViewState();

  void widgetNameString(String s) {
    widgetName = s;
  }
}

class _ClientsViewState extends State<ClientsView> {
  List<User> user = [
    User(
        name: "Tanvi Sachdeva",
        id: "CBM00001",
        membership: "No current membership",
        age: 32,
        email: "tanvisachdeva@cbhealthclub.com"),
    User(
        name: "Ashis lakhani",
        id: "CBM000012",
        membership: "No current membership",
        age: 32,
        email: "tanvisachdeva@cbhealthclub.com"),
    User(
        name: "Mitansh teneja",
        id: "CBM000041",
        membership: "No current membership",
        age: 32,
        email: "tanvisachdeva@cbhealthclub.com"),
    User(
        name: "Tejas Taliya",
        id: "CBM000031",
        membership: "No current membership",
        age: 32,
        email: "tanvisachdeva@cbhealthclub.com"),
    User(
        name: "Abhinav Agarwal",
        id: "CBM000031",
        membership: "No current membership",
        age: 32,
        email: "tanvisachdeva@cbhealthclub.com"),
    User(
        name: "Mohan kapoor",
        id: "CBM000031",
        membership: "No current membership",
        age: 32,
        email: "tanvisachdeva@cbhealthclub.com"),
  ];

  String addUserScreen = "Clients";

  Widget buildTopButtons(String type, IconData iconData) {
    return Column(
      children: [
        FlatButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AddUserView.route);
          },
          child: Icon(
            iconData,
            color: Colors.deepPurpleAccent,
            size: 80,
          ),
        ),
        Text(type),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(
                100,
                40,
                MediaQuery.of(context).size.width * 0.6,
                20,
              ),
              child: Row(
                children: [
                  buildTopButtons("Add Client", Icons.account_box),
                  buildTopButtons("Add Inquiry", Icons.calendar_month),
                  buildTopButtons("Attendance", Icons.calendar_view_day),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.width * 0.8,
              child: Wrap(
                children: [
                  ...user
                      .map((user) => SingleUser(
                            name: user.name,
                            email: user.email,
                            age: user.age,
                            membership: user.membership,
                            id: user.id,
                          ))
                      .toList(),
                  // SingleUser(
                  //   name: user[0].name,
                  //   email: user[0].email,
                  //   id: user[0].id,
                  //   age: user[0].age,
                  //   membership: user[0].membership,
                  // )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

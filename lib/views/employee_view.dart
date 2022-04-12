import 'package:flutter/material.dart';

import '../models/user.dart';
import '../widgets/single_user.dart';
import 'add_user_view.dart';

class EmployeeView extends StatefulWidget {


  static String route = "/Employee";

  @override
  State<EmployeeView> createState() => _EmployeeViewState();
}

class _EmployeeViewState extends State<EmployeeView> {
  List<User> user = [
    User(
        name: "Ahmed Motiwala",
        id: "CBM00001",
        membership: "No current membership",
        age: 32,
        email: "tanvisachdeva@cbhealthclub.com"),
    User(
        name: "Ashis bhagat",
        id: "CBM000012",
        membership: "No current membership",
        age: 32,
        email: "tanvisachdeva@cbhealthclub.com"),
    User(
        name: "Dhaval vyas",
        id: "CBM000041",
        membership: "No current membership",
        age: 32,
        email: "tanvisachdeva@cbhealthclub.com"),
    User(
        name: "Falvin Patel",
        id: "CBM000031",
        membership: "No current membership",
        age: 32,
        email: "tanvisachdeva@cbhealthclub.com"),
    User(
        name: "Hemant Solanki",
        id: "CBM000031",
        membership: "No current membership",
        age: 32,
        email: "tanvisachdeva@cbhealthclub.com"),
    User(
        name: "Jignesh Soni",
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
                  buildTopButtons("Personal Training", Icons.calendar_month),
                  buildTopButtons("Attendance", Icons.calendar_today),
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


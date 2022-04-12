import 'package:flutter/material.dart';

import '../models/user.dart';

class SingleUser extends StatelessWidget {
  SingleUser({this.id, this.name, this.email, this.membership, this.age});


  String? id;
  String? name;
  String? email;
  String? membership;
  int? age;


  @override
  Widget build(BuildContext context) {
    List<User> user = [
      User(
          name: "Tanvi Sachdeva",
          id: "CBM00001",
          membership: "No current membership",
          age: 32,
          email: "tanvisachdeva@cbhealthclub.com"),
    ];

    return Container(
      margin: EdgeInsets.all(5),
      width: 500,
      height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black12
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 350,
              height: 50,
              margin: EdgeInsets.fromLTRB(20, 20, 60, 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
              ),
              child: Center(
                child: Text(
                  user[0].membership!,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 200),
                  width: 100,
                  height: 100,
                  child: const Icon(
                    Icons.account_box,
                    color: Colors.black,
                    size: 150,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                  width: 300,
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
                        child: Text(
                          name!,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          id!,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          email!,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          membership!,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

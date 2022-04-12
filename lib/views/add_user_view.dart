import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:simplyloose/widgets/add_user.dart';

class AddUserView extends StatefulWidget {
  static String route = "/ClientsView";

  AddUserView();

  @override
  State<AddUserView> createState() => _AddUserViewState();
}

class _AddUserViewState extends State<AddUserView> {


  void submitForm(
    String memberName,
    String email,
    String dob,
    String surname,
    String membership,
    String membergender,
    String membershipAmount,
  ) async {
    FirebaseFirestore.instance.collection('clientData').doc().set(
      {
        "membername" : memberName,
        "emaiil" : email,
        "dob" : dob,
        "surname" : surname,
        "membership" : membership,
        "Gender" : membergender,
        "membershipAmount" : membershipAmount
      }
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        title: Text("AddUser"),
      ),
      body: AddUser(submitForm),
    );
  }
}

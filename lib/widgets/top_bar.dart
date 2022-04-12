import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:simplyloose/views/settings_view.dart';

import '../views/my_profile_view.dart';

class TopBar extends StatelessWidget {
  String name;

  TopBar(this.name);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        DropdownButton(
          icon: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 60, 0),
            child: const Icon(
              Icons.settings,
              color: Colors.white,
              size: 35,
            ),
          ),
          items: const [
            DropdownMenuItem(
              value: "myprofile",
              child: Text("My profile"),
            ),
            DropdownMenuItem(
              value: "settings",
              child: Text("Settings"),
            ),
            DropdownMenuItem(
              value: "logout",
              child: Text("Logout"),
            ),
          ],
          onChanged: (value) {
            switch (value) {
              case "myprofile":
                {
                  Navigator.of(context).pushNamed(MyProfileView.route);
                }
                break;
              case "settings":
                {
                  Navigator.of(context).pushNamed(SettingsView.route);

                }
                break;
              case "logout":
                {}
                break;
            }
          },
        ),
      ],
      title: Text(name),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}

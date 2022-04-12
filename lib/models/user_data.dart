import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserData extends StatelessWidget {
  const UserData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test"),
        actions: [
          DropdownButton(
            onChanged: (item) {
              if (item == "logout") {
                FirebaseAuth.instance.signOut();
              }
            },
            items: [
              DropdownMenuItem(
                  value: "logout",
                  child: Container(
                    child: Row(
                      children: const [
                        Icon(Icons.exit_to_app),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Logout"),
                      ],
                    ),
                  ))
            ],
            icon: Icon(
              Icons.more_vert,
              color: Theme.of(context).primaryIconTheme.color,
            ),
          )
        ],
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("users/").snapshots(),
        builder: (ctx, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          final documents = streamSnapshot.data?.docs;

          if (streamSnapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: streamSnapshot.data?.docs.length,
            itemBuilder: (ctx, index) => Center(
              child: Text(
                documents?[index]["name"] + " " + documents?[index]["surname"],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseFirestore.instance
              .collection("users/")
              .add({"name": "added name", "surname": "added surname"});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:simplyloose/views/add_user_view.dart';
import 'package:simplyloose/views/client_view.dart';
import 'package:simplyloose/views/dashaboard.dart';
import 'package:simplyloose/views/different_screens.dart';
import 'package:simplyloose/views/employee_view.dart';
import 'package:simplyloose/views/my_profile_view.dart';
import 'package:simplyloose/views/settings_view.dart';
import 'views/auth_screen.dart';
import 'models/user_data.dart';
import 'views/admin_panel_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDfh82-E2l0gbnabbEYcenhRQD6aVFNdZ8",
      appId: "1:723547198130:web:08ff9d1d5ad97ba7316fab",
      messagingSenderId: "723547198130",
      projectId: "simplyloose-d60cb",
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => DifferentScreens(),
      child: MaterialApp(
        title: "SimplyLoose",
        theme: ThemeData(
          primaryColor: Colors.deepPurple,
          accentColor: Colors.deepPurpleAccent,
          buttonTheme: ButtonTheme.of(context).copyWith(
            buttonColor: Colors.deepPurpleAccent,
            textTheme: ButtonTextTheme.primary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
        home: Scaffold(
          body: AdminPanel(),
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          MyProfileView.route: (ctx) => MyProfileView(),
          SettingsView.route: (ctx) => SettingsView(),
          Dashboard.route : (ctx) => Dashboard(),
          EmployeeView.route : (ctx) => EmployeeView(),
          ClientsView.route : (ctx) => ClientsView(),
          AddUserView.route : (ctx) => AddUserView(),
        },
      ),
    );
  }
}

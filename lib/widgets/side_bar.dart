import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simplyloose/views/client_view.dart';
import 'package:simplyloose/views/different_screens.dart';
import 'package:simplyloose/views/screen_view.dart';
import 'package:simplyloose/widgets/top_bar.dart';
import '../views/my_profile_view.dart';

class SideBar extends StatefulWidget {
  BuildContext otherContext;

  SideBar(this.otherContext);

  @override
  State<SideBar> createState() {
    return _SideBarState();
  }
}

class _SideBarState extends State<SideBar> {
  String appBarName = "Dashboard";
  String widgetName = "Dashboard";
  bool otherScreenRequest = false;

  Widget menuItem(String name, IconData iconData) {
    return Container(
      margin: EdgeInsets.all(20),
      child: RaisedButton(
        elevation: 20,
        colorBrightness: Brightness.light,
        onPressed: () {
          setState(() {
            appBarName = name;
            widgetName = name;
          });

          Provider.of<DifferentScreens>(context, listen: false).setScreenName(name);
        },
        child: ListTile(
          title: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              name,
              style: TextStyle(color: Colors.white),
            ),
          ),
          leading: Icon(
            iconData,
            color: Colors.white70,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String test = Provider.of<DifferentScreens>(context).getScreenName;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: TopBar(appBarName),
      ),
      body: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: Colors.deepPurpleAccent,
            width: MediaQuery.of(widget.otherContext).size.width,
            height: MediaQuery.of(context).size.height,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      menuItem("Dashboard", Icons.home),
                      menuItem("Clients", Icons.account_box_rounded),
                      menuItem("Employees", Icons.account_box_outlined),
                      menuItem("Send Notifications", Icons.alternate_email),
                      menuItem("Program Management", Icons.assignment),
                      menuItem("Schedule", Icons.schedule),
                      menuItem("Shifts", Icons.sunny),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: ChangeNotifierProvider(

                        create: (context) => DifferentScreens(),
                        child: ScreensView(test)
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simplyloose/views/ProgramManagement_view.dart';
import 'package:simplyloose/views/add_user_view.dart';
import 'package:simplyloose/views/client_view.dart';
import 'package:simplyloose/views/dashaboard.dart';
import 'package:simplyloose/views/different_screens.dart';
import 'package:simplyloose/views/employee_view.dart';
import 'package:simplyloose/views/reports_view.dart';
import 'package:simplyloose/views/schedule_view.dart';
import 'package:simplyloose/views/send_notifications_view.dart';
import 'package:simplyloose/views/shifts_view.dart';
import 'package:simplyloose/views/user_view.dart';


class ScreensView extends StatelessWidget {

  String widgetName;
  ScreensView(this.widgetName);
  Map<String, Widget> widgetMap = {
    "Dashboard": Dashboard(),
    "ClientsView": ClientsView(),
    "EmployeesView": EmployeeView()
  };

  @override
  Widget build(BuildContext context) {

    String test = Provider.of<DifferentScreens>(context).getScreenName;

    List<Widget> widgetList = [
      Dashboard(),
      ClientsView(),
      EmployeeView(),
      SendNotifications(),
      ProgramManagement(),
      Shifts(),
      Schedule(),
      Reports(),
      AddUserView(),
      UserView(),
    ];

    if (widgetName == "Dashboard") return widgetList[0];
    if (widgetName == "Clients") return widgetList[1];
    if (widgetName == "Employees") return widgetList[2];
    if (widgetName == "Send Notifications") return widgetList[3];
    if (widgetName == "Program Management") return widgetList[4];
    if (widgetName == "Shifts") return widgetList[5];
    if (widgetName == "Schedule") return widgetList[6];
    if (widgetName == "Reports") return widgetList[7];
    if (widgetName == "addClients") return widgetList[8];
    if (widgetName == "singleUser") return widgetList[9];

    return Dashboard();
  }
}

import 'package:flutter/material.dart';
import 'package:simplyloose/widgets/tables/expired_membership.dart';
import 'package:simplyloose/widgets/tables/today_classes.dart';
import 'package:simplyloose/widgets/tables/upcoming_birthday.dart';
import 'package:simplyloose/widgets/tables/upcoming_followup_table.dart';
import 'package:simplyloose/widgets/tables/event_table.dart';
import 'package:simplyloose/widgets/tables/upcoming_membership_expiration.dart';
import 'package:simplyloose/widgets/tables/upcoming_payment_due.dart';

class TableWidgetView extends StatelessWidget {
  String tableName;

  TableWidgetView(this.tableName);

  @override
  Widget build(BuildContext context) {
    if (tableName == "EventTable") return EventTable();
    if (tableName == "upcomingBirthday") return UpcomingBirthday();
    if (tableName == "upcomingPaymentDue") return UpcomingPaymentDue();
    if (tableName == "upcomingMembershipExpiration") return UpcomingMembershipExpiration();
    if (tableName == "todayClasses") return TodayClasses();
    if (tableName == "expiredMembership") return ExpiredMembership();


    return UpcomingBirthday();
  }
}

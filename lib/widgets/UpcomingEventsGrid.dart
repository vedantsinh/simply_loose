import 'package:flutter/material.dart';

class UpcomingEventsGrid extends StatelessWidget {
  Widget Function(String eventName, int eventNum, String testName) buildItem;

  UpcomingEventsGrid(this.buildItem);


  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.spaceEvenly,
      spacing: 20,
      children: [
        buildItem("Upcoming appointment", 0, "EventTable"),
        buildItem("Upcoming Birthday", 1, "upcomingBirthday"),
        buildItem("Upcoming Paymentdue", 0, "upcomingPaymentDue"),
        buildItem("Upcoming membership expiration", 2, "upcomingMembershipExpiration"),
        buildItem("Today classes", 2, "todayClasses"),
        buildItem("Expired membership", 1, "expiredMembership"),
      ],
    );
  }
}


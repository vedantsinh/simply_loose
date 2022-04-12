import 'package:flutter/material.dart';

import '../widgets/top_bar.dart';

class SettingsView extends StatelessWidget {

  static String route = "/SettingsView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: TopBar("Settings"),
      ),
    );
  }
}

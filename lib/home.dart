import 'package:demo_respnsive_design/dashboard.dart';
import 'package:demo_respnsive_design/menu_controller.dart';
import 'package:demo_respnsive_design/responsive.dart';
import 'package:demo_respnsive_design/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: context.read<MenuController>().scaffoldKey,
        drawer: SideMenu(),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)) Expanded(child: SideMenu()),
            Expanded(flex: 5, child: DashBoard()),
          ],
        ));
  }
}

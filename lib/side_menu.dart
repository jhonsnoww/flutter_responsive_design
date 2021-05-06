import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
          child: Column(
        children: [
          DrawerHeader(
            child: Text("Hello SU"),
          ),
          DrawerListTile(
            press: () {},
            svgSrc: Icons.home,
            title: 'Home',
          ),
          DrawerListTile(
            press: () {},
            svgSrc: Icons.account_balance,
            title: 'Bank',
          ),
          DrawerListTile(
            press: () {},
            svgSrc: Icons.monetization_on,
            title: 'Money',
          ),
          DrawerListTile(
            press: () {},
            svgSrc: Icons.outbond,
            title: 'Outbond',
          )
        ],
      )),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key key,
    @required this.title,
    @required this.svgSrc,
    @required this.press,
  }) : super(key: key);

  final String title;
  final IconData svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Icon(
        svgSrc,
        color: Colors.white54,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}

import 'package:demo_respnsive_design/menu_controller.dart';
import 'package:demo_respnsive_design/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 8,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  if (!Responsive.isDesktop(context)) ...{
                    IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: context.read<MenuController>().controlMenu)
                  },
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Deshboard",
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                ],
              ),
              Container(
                color: Colors.amberAccent,
              ),
              Container(
                color: Colors.amber,
              )
            ],
          ),
        ),
        if (Responsive.isDesktop(context)) ...{
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(15),
              color: Colors.black54,
            ),
          )
        }
      ],
    );
  }
}

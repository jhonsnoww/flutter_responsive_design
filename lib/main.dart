import 'package:demo_respnsive_design/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme)
                .apply(bodyColor: Colors.white)),
        title: 'Responsive Design-Demo',
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => MenuController())
          ],
          child: Home(),
        ));
  }
}

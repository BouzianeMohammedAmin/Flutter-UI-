import 'package:flutter/material.dart';
import 'package:flutter_ui/dailyui/daily_ui.dart';
import 'package:flutter_ui/ui/relationship_coaching_app/relationship_coaching.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:DailyUI(),
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.grey,
        fontFamily: 'Montserrat',
      ),
    );
  }
}


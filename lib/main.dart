import 'package:yz_personal_website/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:yz_personal_website/github.dart';

import 'package:url_strategy/url_strategy.dart';

void main() {
  // Here we set the URL strategy for our web app.
  // It is safe to call this function when running on mobile or desktop as well.
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yonathan Zetune',
      initialRoute: "/",
      routes: {
        // When we navigate to the "/" route, build the MapView Screen
        '/Github': (context) => Github(),
//        '/gSearch': (context) => new Search(),
      },
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          fontFamily: "GoogleSansRegular"),
      home: Stack(children: [ProfilePage()]),
    );
  }
}

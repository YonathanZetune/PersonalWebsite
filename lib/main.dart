import 'package:YZPersonalWebsite/profile_page.dart';
import 'package:flutter_web/material.dart';
import 'package:YZPersonalWebsite/github.dart';

void main() => runApp(MyApp());

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
        fontFamily: "GoogleSansRegular"
      ),
      home: ProfilePage(),
    );
  }
}

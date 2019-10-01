import 'package:flutter/material.dart';

import 'responsive_widget.dart';

class Github extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    child: Text(
                      'GitHub',
                      textScaleFactor: 3,
                    ),
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  SizedBox(
                    child: Text(
                      'GitHub.com/YonathanZetune',
                      textScaleFactor: 2,
                    ),
//                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Divider(
                    color: Colors.red,
                  ),
                  SizedBox(
                    child: Text(
                      'All of my projects are on GitHub, check them out below!',
                      textScaleFactor: 2,
                    ),
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                ],
              ),
              smallScreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    child: Text(
                      'GitHub',
                      textScaleFactor: 3,
                    ),
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Divider(
                    color: Colors.red,
                  ),
                  SizedBox(
                    child: Text(
                      'All of my projects are on GitHub,check them out below!',
                      textScaleFactor: 2,
                    ),
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

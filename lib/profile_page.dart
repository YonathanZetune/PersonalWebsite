//import 'dart:ui';

import 'package:flutter_particles/particles.dart';

//import 'package:universal_html/prefer_universal/html.dart' as html;
import 'package:yz_personal_website/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:universal_html/html.dart' as html;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black54,
        ),
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
            child: ResponsiveWidget(
              largeScreen: Stack(children: [
                Particles(40, Colors.white30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    NavHeader(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    ProfileInfo(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    SocialInfo(),
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

class NavHeader extends StatelessWidget {
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          PKDot(),
//          Spacer(),
          if (!ResponsiveWidget.isSmallScreen(context))
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: RaisedButton(
                    child: Text("Apps"),
                    onPressed: () {
                      html.window.open(
                          'https://apps.apple.com/us/developer/yonathan-zetune/id1447059513',
                          'iosApps');
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: RaisedButton(
                  child: Text("Projects"),
                  onPressed: () {
                    html.window.open(
                        'https://github.com/YonathanZetune?tab=repositories',
                        'githubrepos');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: RaisedButton(
                  child: Text("Contact"),
                  onPressed: () {
                    html.window.open(
                        'https://www.linkedin.com/in/yzetune/', 'contactemail');
//                  html.window.open(
//                      'https://cli.re/GXDNPA',
//                      'contactemail');
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class PKDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AutoSizeText(
          "Welcome!",
          textScaleFactor: 2,
//          style: TextStyle(
//            fontWeight: FontWeight.bold,
//          ),
        ),
        SizedBox(
          width: 5,
        ),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const NavButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.color = Colors.orange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: AutoSizeText(text),
      borderSide: BorderSide(
        color: color,
      ),
      onPressed: onPressed,
      highlightedBorderColor: color,
    );
  }
}

class ProfileInfo extends StatelessWidget {
  profileImage(context) => Container(
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.2
            : MediaQuery.of(context).size.width * 0.2,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.2
            : MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.luminosity,
          color: Colors.transparent,
//            borderRadius: BorderRadius.circular(40),
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("YZPic.JPG"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );

  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      AutoSizeText(
        "Howdy! My name is",
        textScaleFactor: 2,
        style: TextStyle(fontFamily: "GoogleSansRegular", color: Colors.orange),
      ),
      AutoSizeText(
        "Yonathan\nZetune",
        textScaleFactor: 5,
        style: TextStyle(
          fontFamily: "GoogleSansRegular",
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      AutoSizeText(
        "Studying at Texas A&M University in College Station, TX.\n"
        "Previous Android Mobile Development Intern at The Washington Post.\n"
        "Some of my projects include TAMU Spirit and FRC Now\n",
        softWrap: true,
        textScaleFactor: 1.5,
        style:
            TextStyle(fontFamily: "GoogleSansRegular", color: Colors.white70),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton(
            shape: StadiumBorder(),
            child: AutoSizeText("Resume"),
            color: Colors.red,
            onPressed: () {
              html.window.open(
                  'https://www.dropbox.com/s/fzjk0r8gfxej8bs/ZetuneResumeFall2019Pages.pdf?dl=0',
                  'resume');
            },
            padding: EdgeInsets.all(10),
          ),
          SizedBox(
            width: 20,
          ),
//          OutlineButton(
//            borderSide: BorderSide(
//              color: Colors.red,
//            ),
//            shape: StadiumBorder(),
//            child: Text("Say Hi!"),
//            color: Colors.red,
//            onPressed: () {},
//            padding: EdgeInsets.all(10),
//          )
        ],
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[profileImage(context), profileData],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileData
        ],
      ),
    );
  }
}

class SocialInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: RaisedButton(
                  child: Text("Github"),
                  onPressed: () {
//                  Navigator.of(context).pushNamed('/Github');
                    html.window
                        .open('https://github.com/YonathanZetune', 'github');
                  },
                  color: Colors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: RaisedButton(
                  child: Text("Linkedin"),
                  onPressed: () {
                    html.window
                        .open('https://www.linkedin.com/in/yzetune/', 'linkedin');
                  },
                  color: Colors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: RaisedButton(
                  child: Text("Facebook"),
                  onPressed: () {
                    html.window.open(
                        'https://www.facebook.com/yonathan.zetune', 'facebook');
                  },
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          AutoSizeText(
            "Yonathan Zetune ©️2019",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: RaisedButton(
              child: Text("Github"),
              onPressed: () {
//                  Navigator.of(context).pushNamed('/Github');
                html.window.open('https://github.com/YonathanZetune', 'github');
              },
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: RaisedButton(
              padding: EdgeInsets.all(4.0),
              child: Text("Linkedin"),
              onPressed: () {
                html.window
                    .open('https://www.linkedin.com/in/yzetune/', 'linkedin');
              },
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: RaisedButton(
              child: Text("Facebook"),
              onPressed: () {
                html.window
                    .open('https://www.facebook.com/yonathan.zetune', 'facebook');
              },
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

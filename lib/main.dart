import 'package:findhelpie/screens/home.dart';
import 'package:findhelpie/screens/login.dart';
import 'package:findhelpie/utilities/Helper.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'screens/Splash.dart';

void main() => runApp(FindHelpie());

class FindHelpie extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FindHelpie();
  }
}

class _FindHelpie extends State<FindHelpie> {
  FirebaseAuth auth = FirebaseAuth.instance;
  Widget initialScreen = Splash();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timerCallBack();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor:Helper.appcolor),
      home: initialScreen,
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false,

    );
  }

  timerCallBack() async  {
    await Future.delayed(Duration(seconds: 2));
    await _checkifuseralreadyLoggedIn();
  }

  Future<void> _checkifuseralreadyLoggedIn() async {
    FirebaseUser user = await auth.currentUser();
    if (user != null) {
      print("current user ${user}");
      initialScreen = Home(user: user,);
      setState(() {});
    } else {
      print("no current user");
      setState(() {
        initialScreen = Login();
      });
    }
  }

}

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class Helper extends StatelessWidget {

  static final Color appcolor = Colors.red;
  static final Color navBarcolor = Colors.redAccent;

  static final Color cropTitleColor = Color.fromRGBO(41, 55, 85, 1); 


  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CupertinoActivityIndicator(
        animating: true,
        radius: 10,
      ),
    );
  }

  static showLoading(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return Helper();
        });
  }

  static showCircularProgressIndicator(BuildContext context) {
    return CircularProgressIndicator(
      backgroundColor: Colors.white,
      valueColor: AlwaysStoppedAnimation(appcolor),
    );
  }

  static showCupertinoAlert(BuildContext context, String message) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            content: Text(message),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

    static showCupertinoAlertToPop(BuildContext context, String message) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            content: Text(message),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

      static showCupertinoAlertBackToMain(BuildContext context, String message) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            content: Text(message),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

 
}

import 'package:findhelpie/utilities/Helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SplashState();
}


class _SplashState extends State<Splash>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        elevation: 0,
//        automaticallyImplyLeading: false,
//        title: Text(''),
//      ),
      body: Center(
        child: Text("Find Helpie", style: TextStyle(color: Colors.redAccent, fontSize: 62))
      ),
    );
  }

}
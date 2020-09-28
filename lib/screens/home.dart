import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


import 'login.dart';

class Home extends StatefulWidget {

  FirebaseUser user;

  Home({this.user});
  @override
  State<StatefulWidget> createState() {
    return _Home(this.user);
  }
}

class _Home extends  State<Home>{
  FirebaseUser user;

  _Home(this.user);

  @override
  Future<void> initState()  {
    // TODO: implement initState
    super.initState();

   print("init state working");
   getUser();
  }


  getUser() async {
    user = await FirebaseAuth.instance.currentUser();
    print("user"+user.uid);
   // Fluttertoast.showToast(msg: user.uid);

  }

  Future<void> _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ),
      );

    } catch (e) {
      print(e); // TODO: show dialog with error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(''),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Logout',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
            onPressed: _signOut,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Welcome to Find My Helpie." ,),
            SizedBox(height: 16,),
            Text("${user}", style: TextStyle(color: Colors.grey, ),),
          ],
        ),
      ),
    );
  }
}
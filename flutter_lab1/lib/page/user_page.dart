import 'package:flutter/material.dart';

class User_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to the User Page',style: TextStyle(fontSize: 32),),
          ],
        ),
      ),
    );
  }
}

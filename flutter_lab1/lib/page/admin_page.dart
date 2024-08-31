import 'package:flutter/material.dart';

class Admin_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to the ADMIN Page',style: TextStyle(fontSize: 32),),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:login/pages/manager_view/appDrawer.dart';
import 'package:login/pages/manager_view/manageExploreCards.dart';

class ManagerHomePage extends StatefulWidget {
  @override
  _ManagerHomePageState createState() => _ManagerHomePageState();
}

class _ManagerHomePageState extends State<ManagerHomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          // elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
          elevation: 0.0,
          // titleSpacing: 10.0,

          title: Text(
            'Hi! Tom',
            style: TextStyle(letterSpacing: 5.0),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        drawer: AppDrawer(),
        body: MainContent(),
      ),
    );
  }
}



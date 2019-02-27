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
          backgroundColor: Colors.deepPurple,
          // titleSpacing: 10.0,
          title: Text(
            'Hi! Tom',
            style: TextStyle(wordSpacing: 5.0),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed('/notifyManager');
              },
              icon: Icon(Icons.notifications_active,color: Colors.white,),
            ),
          ],
        ),
        drawer: AppDrawer(),
        body: MainContent(),
      ),
    );
  }
}



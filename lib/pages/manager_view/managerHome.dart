import 'package:flutter/material.dart';

class ManagerHomePage extends StatefulWidget {
  @override
  _ManagerHomePageState createState() => _ManagerHomePageState();
}

class _ManagerHomePageState extends State<ManagerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Align(
          alignment: Alignment.center,
         
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Manager view on-process',
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(color: Colors.white,width: 3.0)
                // shape: BoxShape.rectangle,
              ),
            ),
          
        ));
  }
}

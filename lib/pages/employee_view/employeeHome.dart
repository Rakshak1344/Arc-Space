import 'package:flutter/material.dart';

class EmployeeHomePage extends StatefulWidget {
  @override
  _EmployeeHomePageState createState() => _EmployeeHomePageState();
}

class _EmployeeHomePageState extends State<EmployeeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Align(
          alignment: Alignment.center,
         
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Employee view on-process',
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(color: Colors.white,width: 3.0)
              ),
            ),
          
        ));
  }
}
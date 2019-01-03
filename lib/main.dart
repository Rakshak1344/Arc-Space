import 'package:flutter/material.dart';
import 'package:login/demo/paint.dart';
import 'package:login/pages/manager_view/manageProjects.dart';

import 'package:login/pages/employee_view/employeeHome.dart';
import 'package:login/pages/home_page/wel.dart';
import 'package:login/pages/login_and_SignUp_pages/employeeLogin.dart';
import 'package:login/pages/login_and_SignUp_pages/managerLogin.dart';
import 'package:login/pages/login_and_SignUp_pages/registerCompany.dart';
import './pages/login_and_SignUp_pages/forgotPassword.dart';

import 'package:login/pages/manager_view/managerHome.dart';

void main() {
  //  debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Welcome(),
      routes: {
        '/sketchPad': (BuildContext context)=> new PaintPage(),
        '/manageProjects':(BuildContext context)=> new ManageProjects(),
        '/home': (BuildContext context) => new Welcome(),
        '/managerLoginPage': (BuildContext context) => new ManagerLoginPage(),
        '/employeeLoginPage': (BuildContext context) => new EmployeeLoginPage(),
        '/forgotPassword': (BuildContext context) => new ForgotPassword(),
        '/managerHomePage': (BuildContext context) => new ManagerHomePage(),
        '/employeeHomePage': (BuildContext context) => new EmployeeHomePage(),
        '/registerCompany': (BuildContext context) => new RegisterACompany(),
      },
    );
  }
}

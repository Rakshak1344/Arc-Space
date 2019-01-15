import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';


import 'package:login/pages/employee_view/employeeHome.dart';
import 'package:login/pages/home_page/wel.dart';
import 'package:login/pages/login_and_SignUp_pages/employeeLogin.dart';
import 'package:login/pages/login_and_SignUp_pages/managerLogin.dart';
import 'package:login/pages/login_and_SignUp_pages/registerCompany.dart';
import 'package:login/pages/manager_view/employees/addEmployee.dart';
import 'package:login/pages/manager_view/employees/employeeView.dart';

// import 'package:login/pages/manager_view/employees/employeeHome.dart';
import 'package:login/pages/manager_view/employees/existingEmployee.dart';
import 'package:login/pages/manager_view/employees/removedOrRetiredEmp.dart';

import 'package:login/pages/manager_view/overview/overview.dart';

import 'package:login/pages/manager_view/projects/addProject.dart';

import 'package:login/pages/manager_view/projects/projectInfo.dart';
import 'package:login/pages/manager_view/projects/projectsCards.dart';
import 'package:login/pages/manager_view/watchAllStatus.dart';
import 'package:login/paint.dart';

import './pages/login_and_SignUp_pages/forgotPassword.dart';

import 'package:login/pages/manager_view/managerHome.dart';
// import 'package:camera/camera.dart';

// List<CameraDescription> cameras;

// Future<Null> main() async {
//   //  debugPaintSizeEnabled = true;
//   // debugPaintBaselinesEnabled = true;
//   debugPaintPointersEnabled = true;

//   cameras = await availableCameras();
//   runApp(MyApp());
// }
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Welcome(),
      routes: {
        '/home': (BuildContext context) => new Welcome(),
        '/sketchPad': (BuildContext context) => new PaintPage(),
        //------------------------------------------------------------
        '/managerLoginPage': (BuildContext context) => new ManagerLoginPage(),
        '/employeeLoginPage': (BuildContext context) => new EmployeeLoginPage(),
        '/registerCompany': (BuildContext context) => new RegisterACompany(),
        '/forgotPassword': (BuildContext context) => new ForgotPassword(),
        //---------------------------------------------------------------
        '/managerHomePage': (BuildContext context) => new ManagerHomePage(),
        //---------------------------------------------------------------
        '/manageProjects': (BuildContext context) => new ManageProjects(),
        '/watchAllStatus': (BuildContext context) => new WatchAllStatus(),
        '/projectInfo': (BuildContext context) => new InfoPage(),
        '/addProject': (BuildContext context) => new AddProject(),
        '/overView': (BuildContext context) => new Overview(),
        //---------------------------------------------------------------
        '/exEmployees':(BuildContext context) => new RemovedOrRetired(),
        '/employee': (BuildContext context) => new EmployeeView(),
        '/existingEmployee': (BuildContext context) => new ExistingEmployee(),
        '/addEmployee': (BuildContext context) => new AddEmployee(),
        
        //---------------------------------------------------------------
        '/employeeHomePage': (BuildContext context) => new EmployeeHomePage(),
        
        
        
      },
    );
  }
}

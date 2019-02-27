import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

import 'package:login/pages/employee_view/employeeHome.dart';

import 'package:login/pages/home_page/welcome.dart';
import 'package:login/pages/login_and_SignUp_pages/employeeLogin.dart';
import 'package:login/pages/login_and_SignUp_pages/managerLogin.dart';
import 'package:login/pages/login_and_SignUp_pages/registerCompany.dart';
import 'package:login/pages/manager_view/employees/addEmployee.dart';
import 'package:login/pages/manager_view/employees/employeeView.dart';

import 'package:login/pages/manager_view/employees/existingEmployee.dart';
import 'package:login/pages/manager_view/employees/removedOrRetiredEmp.dart';
import 'package:login/pages/manager_view/notification.dart';

import 'package:login/pages/manager_view/overview/overview.dart';
import 'package:login/pages/manager_view/profile/editProfileManager.dart';
import 'package:login/pages/manager_view/profile/profile.dart';
import 'package:login/pages/manager_view/projects/home/projectsCards.dart';
import 'package:login/pages/manager_view/projects/manageEmployees/IndividualProfile.dart';
import 'package:login/pages/manager_view/projects/manageEmployees/addEmpToProject.dart';
import 'package:login/pages/manager_view/projects/manageEmployees/employeesAction.dart';
import 'package:login/pages/manager_view/projects/projectAdd&Info/addProject.dart';
import 'package:login/pages/manager_view/projects/projectAdd&Info/manageParticularProject.dart';
import 'package:login/pages/manager_view/projects/projectAdd&Info/projectInfo.dart';
import 'package:login/pages/manager_view/settings-manager/settingsManager.dart';
import 'package:login/pages/manager_view/watchAllStatus.dart';
import 'package:login/paint.dart';
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
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: WelcomePage(),
      routes: {
        '/home': (BuildContext context) => new WelcomePage(),
        '/sketchPad': (BuildContext context) => new PaintPage(),
        // '/maps':(BuildContext context)=>Maps(),
        //------------------------------------------------------------
        '/managerLoginPage': (BuildContext context) => new ManagerLoginPage(),
        '/employeeLoginPage': (BuildContext context) => new EmployeeLoginPage(),
        '/registerCompany': (BuildContext context) => new RegisterACompany(),
        //---------------------------------------------------------------
        '/managerHomePage': (BuildContext context) => new ManagerHomePage(),
        '/settingsManager': (BuildContext context) =>SettingsManager(),
        '/notifyManager':(BuildContext context)=> NotifyManager(),
        '/editManagerProfile': (BuildContext context) => new EditProfileManager(),
        '/managerProfile':(BuildContext context) => new Profile(),
        //---------------------------------------------------------------
        '/manageProjects': (BuildContext context) => new ManageProjects(),
        '/addEmpToProject':(BuildContext context)=> AddEmpToProject(),
        '/individualProfile':(BuildContext context)=>IndividualProfile(),
        '/watchAllStatus': (BuildContext context) => new WatchAllStatus(),
        //---------------------------------------------------------------
        '/projectInfo': (BuildContext context) => new InfoPage(),
        '/controlEmployees':(BuildContext context)=>new ControlEmployees(),
        '/manageParticularProject':(BuildContext context)=>ManageParticularProject(),
        //----------------------------------------------------------------
        '/addProject': (BuildContext context) => new AddProject(),
        '/overView': (BuildContext context) => new Overview(),
        //---------------------------------------------------------------
        '/employee': (BuildContext context) => new EmployeeView(),
        '/exEmployees': (BuildContext context) => new RemovedOrRetired(),
        '/existingEmployee': (BuildContext context) => new ExistingEmployee(),
        '/addEmployee': (BuildContext context) => new AddEmployee(),
        //---------------------------------------------------------------
        '/employeeHomePage': (BuildContext context) => new EmployeeHomePage(),
      },
    );
  }
}

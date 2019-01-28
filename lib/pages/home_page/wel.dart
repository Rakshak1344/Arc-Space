import 'dart:ui';

import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  Align buildFrostedGlass() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
          child: Container(
              height: 320.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                // color: Colors.black.shade200.withOpacity(0.9),
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            width: 30.0,
                            height: 1.5,
                            //  color:  Colors.black.withOpacity(1.0),
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            width: 30.0,
                            height: 1.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      buildSelectProfileTxtView(),
                      buildManagerIcon(),
                      buildEmployeeIcon(),
                      buildManagerTxtView(),
                      buildEmployeeTxtView(),
                      // buildNewUserTxtView(),
                      // buildRegCompanyBtn(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            width: double.infinity,
                            height: 1.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ))),
    );
  }

  Align buildRegCompanyBtn() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/registerCompany');
              },
              color: Colors.white,
              textColor: Colors.black,
              child: Text(
                'Register Company',
              ),
            ),
          )),
    );
  }

  Align buildNewUserTxtView() {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 20.0),
          child: Text(
            'New User?',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              letterSpacing: 5.5,
              fontStyle: FontStyle.italic,
              // fontWeight: FontWeight.w500
            ),
          ),
        ));
  }

  Align buildEmployeeTxtView() {
    return Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 30.0, 50.0, 80.0),
          child: Text(
            'Employee',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22.0,
              letterSpacing: 2.5,
              // fontWeight: FontWeight.bold
            ),
          ),
        ));
  }

  Align buildManagerTxtView() {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(60.0, 30.0, 0.0, 80.0),
          child: Text(
            'Manager',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22.0,
              letterSpacing: 2.5,
              // fontWeight: FontWeight.bold
            ),
          ),
        ));
  }

  Align buildEmployeeIcon() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 30.0, 60.0, 80.0),
        child: SizedBox(
          height: 100.0,
          child: buildButtons(
            Icons.person_outline,
            Colors.black,
            'Employee',
            // Navigator.of(context).push(context, MaterialPageRoute(builder: (context)=> LoginPage())),
          ),
        ),
      ),
    );
  }

  Align buildManagerIcon() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(60.0, 30.0, 0.0, 80.0),
        child: SizedBox(
          height: 100.0,
          child: buildButtons(
            Icons.card_travel,
            Colors.black,
            'Manager',
          ),
        ),
      ),
    );
  }

  Align buildSelectProfileTxtView() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          'Select Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 32.0,
            // fontFamily: 'Megrim',
            // fontWeight: FontWeight.bold,
            letterSpacing: 4.0,
            // fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  Container buildButtons(IconData icon, Color iconColor, String pg) {
    return Container(
      child: InkWell(
        onTap: () {
          if (pg == 'Manager') {
            setState(() {
              Navigator.of(context).pushNamed('/managerLoginPage');
            });
          } else if (pg == 'Employee') {
            setState(() {
              Navigator.of(context).pushNamed('/employeeLoginPage');
            });
          }
        },
        borderRadius: BorderRadius.circular(10.0),
        child: Icon(
          icon,
          color: iconColor,
          size: 50.0,
        ),
        splashColor: Colors.red,
      ),
      height: 100.0,
      width: 100.0,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: Colors.red, width: 2.0)),
    );
  }

  Padding buildImagePaddingArcSpace() {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Container(
        child: Image.asset('assets/arcNew.png'),
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black,
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0.8, 0.8),
            colors: [Colors.blueGrey, Colors.white],
            tileMode: TileMode.mirror,
          )),
        ),
        buildImagePaddingArcSpace(),
        // buildTitleIam(),
        buildFrostedGlass()
      ],
    ));
  }
}

//  Align buildTitleIam() {
//    return Align(
//        alignment: Alignment.center,
//        child: Padding(
//            padding: EdgeInsets.fromLTRB(200.0, 500.0, 30.0, 0.0),
//            child: Container(
//              height: 450.0,
//              width: 450.0,
//              child: Text(
//                'I am ?',
//                style: TextStyle(
//                    color: Colors.black,
//                    fontSize: 22.0,
//                    letterSpacing: 3.5,
//                    fontWeight: FontWeight.bold),
//              ),
//            )));
//  }

/*
Page is not used
 */



import 'dart:ui';

import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Align buildTitleWelcome() {
    return Align(
        alignment: Alignment.topRight,
        child: Padding(
            padding: EdgeInsets.fromLTRB(200.0, 250.0, 30.0, 0.0),
            child: Container(
              height: 450.0,
              width: 450.0,
              child: Text(
                'Aspire the Space of Construction',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 22.0,
                  letterSpacing: 3.5,
                ),
              ),
            )));
  }

  Align buildFrostedGlass() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
          child: Container(
              height: 300.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade200.withOpacity(0.1),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                // child: buildButtons(),
                child: Container(
                  height: 350.0,
                  //TODO: child for building button
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildButtons(Icons.person, Colors.white),
                        SizedBox(
                          width: 40.0,
                        ),
                        buildButtons(Icons.ac_unit, Colors.red),
                      ]),
                ),
              )),
        ));
  }

// Container(
//                 height: 150.0,
//                 //TODO: child for building button
//                 child: Row(
//                   children:[
//                   buildButtons(Icons.ac_unit,Colors.red),
//                   buildButtons(Icons.ac_unit,Colors.red),

//                   ]
//               ),
//             ),
  // Column buildButtons() {
  //   return Column(
  //               children: <Widget>[
  //                   SizedBox(
  //                     width: 150.0,
  //                     height: 40.0,
  //                     child: RaisedButton(
  //                         onPressed: null,
  //                         child: Text('Manager')
  //                     ),
  //                   ),
  //                   SizedBox(height: 20.0,),
  //                   SizedBox(
  //                     width: 150.0,
  //                     height: 40.0,
  //                     child: RaisedButton(
  //                         onPressed: null,
  //                         child: Text('Employee')
  //                     ),
  //                   ),
  //               ],
  //             );
  // }
  Container buildButtons(IconData icon, Color iconColor) {
    return Container(
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(30.0),
        child: Icon(
          icon,
          color: iconColor,
          size: 60.0,
        ),
      ),
      height: 100.0,
      width: 100.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 1.5)),
    );
  }

  Align buildCircleScaffold() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 225.0),
        child: Container(
          height: 100.0,
          width: 100.0,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        children: <Widget>[
          Container(
            child: Image.asset('assets/arcSpace.png'),
            height: 450.0,
            width: double.infinity,
          ),

          buildTitleWelcome(),
          // buildCircleScaffold(),
          buildFrostedGlass()
        ],
      ),
    );
  }
}

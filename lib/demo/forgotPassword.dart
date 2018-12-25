/**
 * 
 * page not in use
 *  */

import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        backgroundColor: Colors.grey.shade200,
        body: Column(
          children: <Widget>[
            //Top Card Color
            Stack(
              children: <Widget>[
                Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 200.0,
                      width: double.infinity,
                      color: Colors.blueGrey,
                    )),

                //Icon Rounded email
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Container(
                      child: Icon(
                        Icons.mail,
                        color: Colors.red,
                        size: 60.0,
                      ),
                      height: 90.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 2.0)),
                    ),
                  ),
                ),
                
            //TextView and Border
            Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.horizontal(left: Radius.circular(10.0) ),
                        border: Border(
                            bottom: BorderSide(width: 1.0),
                            top: BorderSide(width: 1.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Reset password through email',
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 18.0,
                              letterSpacing: 2.5),
                        ),
                      ),
                    ))),
              ],
            ),

            //--------
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Email', hintText: 'xyz@mail.com'),
                  ),
                ),
              ),
            ),
            // Align(
            //   alignment: Alignment.bottomRight,
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Container(
            //       height: 40,
            //       width: double.infinity,
            //       child: RaisedButton(
            //         onPressed: () {},
            //         child: Text('Submit'),
            //         color: Colors.blueGrey,
            //         textColor: Colors.white,
            //       ),
            //     ),
            //   ),
            // ),
         ], 
        ));
  }
}

// Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Flexible(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(
//                   decoration: InputDecoration(
//                       labelText: 'Email', hintText: 'xyz@mail.com'),
//                 ),
//               ),
//             ),
//           ),
//           Flexible(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                     labelText: 'Email', hintText: 'xyz@mail.com'),
//               ),
//             ),
//           )

// /Icon
//           Container(
//               alignment: Alignment.center,
//               child: Container(
//                 height: double.infinity,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(0.0),
//                 ),
//                 child: Stack(
//                   alignment: Alignment.topCenter,
//                 ),
//               )),

// children: <Widget>[

//                Container(
//                   height: 200.0,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(10.0),
//                           topRight: Radius.circular(10.0)),
//                       color: Colors.blueGrey),
//                 ),
//                 //TODO: rounded circle and Icon

//                 //TODO: Reset Password through email

//                 //TODO: Email-Input text field

//                 //TODO: submit button

//           ],

//

//

// Positioned(

//                   top: 100,
//                   left: 100.0,
//                   child: Container(
//                     child: Icon(
//                       Icons.mail,
//                       color: Colors.red,
//                       size: 60.0,
//                     ),
//                     height: 90.0,
//                     width: 90.0,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50.0),
//                         border: Border.all(
//                             color: Colors.white,
//                             style: BorderStyle.solid,
//                             width: 2.0)),
//                   ),
//                 )
// _buildForgotPasswordDialog(context),
//   Dialog _buildForgotPasswordDialog(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//       child: Container(
//         height: 350.0,
//         width: 200.0,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20.0),
//         ),
//         child: Column(
//           children: <Widget>[
//             Stack(
//               children: <Widget>[
//                 Container(
//                   height: 150,
//                 ),
//                 Container(
//                   height: 100.0,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(10.0),
//                           topRight: Radius.circular(10.0)),
//                       color: Colors.blueGrey),
//                 ),
//                 Positioned(
//                   top: 50,
//                   left: 94.0,
//                   child: Container(
//                     child: Icon(
//                       Icons.mail,
//                       color: Colors.red,
//                       size: 60.0,
//                     ),
//                     height: 90.0,
//                     width: 90.0,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50.0),
//                         border: Border.all(
//                             color: Colors.white,
//                             style: BorderStyle.solid,
//                             width: 2.0)),
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Align(
//                 alignment: Alignment.topCenter,
//                 child: Padding(
//                     padding: EdgeInsets.all(1.0),
//                     child: Container(
//                       child: Text(
//                         'Reset password through email',
//                         style:
//                             TextStyle(color: Colors.blueGrey, fontSize: 18.0),
//                       ),
//                     ))),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                     labelText: 'Email', hintText: 'xyz@mail.com'),
//               ),
//             ),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   height: 40,
//                   width: double.infinity,
//                   child: RaisedButton(
//                     onPressed: () {},
//                     child: Text('Submit'),
//                     color: Colors.blueGrey,
//                     textColor: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//  Dialog _buildForgotPasswordDialog(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//       child: Container(
//         height: 350.0,
//         width: 200.0,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20.0),
//         ),
//         child: Column(
//           children: <Widget>[
//             Stack(
//               children: <Widget>[
//                 Container(
//                   height: 150,
//                 ),
//                 Container(
//                   height: 100.0,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(10.0),
//                           topRight: Radius.circular(10.0)),
//                       color: Colors.blueGrey),
//                 ),
//                 Positioned(
//                   top: 50,
//                   left: 94.0,
//                   child: Container(
//                     child: Icon(
//                       Icons.mail,
//                       color: Colors.red,
//                       size: 60.0,
//                     ),
//                     height: 90.0,
//                     width: 90.0,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50.0),
//                         border: Border.all(
//                             color: Colors.white,
//                             style: BorderStyle.solid,
//                             width: 2.0)),
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Align(
//                 alignment: Alignment.topCenter,
//                 child: Padding(
//                     padding: EdgeInsets.all(1.0),
//                     child: Container(
//                       child: Text(
//                         'Reset password through email',
//                         style:
//                             TextStyle(color: Colors.blueGrey, fontSize: 18.0),
//                       ),
//                     ))),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                     labelText: 'Email', hintText: 'xyz@mail.com'),
//               ),
//             ),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   height: 40,
//                   width: double.infinity,
//                   child: RaisedButton(
//                     onPressed: () {},
//                     child: Text('Submit'),
//                     color: Colors.blueGrey,
//                     textColor: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );

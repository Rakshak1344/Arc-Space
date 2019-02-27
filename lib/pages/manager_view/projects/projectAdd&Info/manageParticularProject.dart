import 'package:flutter/material.dart';
import 'package:login/pages/manager_view/projects/projectAdd&Info/dialogAccessManager.dart';
import 'package:login/pages/manager_view/projects/projectAdd&Info/dialogCompletedProject.dart';
import 'package:login/pages/manager_view/projects/projectAdd&Info/dialogCancelProject.dart';
// import 'package:flip_card/flip_card.dart';

class ManageParticularProject extends StatefulWidget {
  @override
  _ManageParticularProjectState createState() =>
      _ManageParticularProjectState();
}

class _ManageParticularProjectState extends State<ManageParticularProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text(
          'Manage Project',
          style: TextStyle(letterSpacing: 1.0),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.deepPurple,
          ),
          child: ListView(
            children: <Widget>[
              // SizedBox(
              //   height: 20.0,
              // ),
              Container(
                height: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: Center(
                  child: ListTile(
                      onTap: () async {
                        final action =
                            await DialogAccessManageEmployee.accessCancelAction(
                                context);
                      },
                      title: Text(
                        'Access Employees',
                        softWrap: true,
                        style: TextStyle(color: Colors.green, fontSize: 22.0),
                      ),
                      subtitle: Text(
                        'Add | remove employees',
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              finalizeActionExpansionTile(),
            ],
          )),
    );
  }

  Container finalizeActionExpansionTile() {
    return Container(
      color: Colors.white70,
      child: ExpansionTile(
        title: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: Colors.red),
          child: Text(
            'Finalize project Cross Street',
            style: TextStyle(color: Colors.white),
          ),
        ),
        initiallyExpanded: false,
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.call_to_action,
            color: Colors.red,
          ),
        ),
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            padding: EdgeInsets.symmetric(horizontal: 55.0, vertical: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.black),
            child: Center(
                child: Text(
              'This options cannot be undone or removed if once selected',
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            )),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                projectCompletedButton(),
                SizedBox(
                  width: 5.0,
                ),
                projectCancelButton()
              ],
            ),
          )
        ],
      ),
    );
  }

  //--------------------------------Action Buttons----------------------------------------------
  Expanded projectCancelButton() {
    return Expanded(
      child: SizedBox(
        height: 50,
        child: RaisedButton.icon(
          onPressed: () async {
            final action = await DialogCancel.deleteCancelAction(context,
                'Are you sure to Delete/Cancel the Project?', 'Enter Pin');
            if (action == CancelProjectDialogAction.delete) {
              Navigator.of(context).canPop();
            } else {
              Navigator.of(context).canPop();
            }
          },
          color: Colors.red,
          splashColor: Colors.redAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          icon: Icon(
            Icons.cancel,
            color: Colors.white,
          ),
          label: Text(
            'Cancel',
            style: TextStyle(color: Colors.white, letterSpacing: 2.0),
          ),
        ),
      ),
    );
  }

  Expanded projectCompletedButton() {
    return Expanded(
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: FlatButton.icon(
          onPressed: () async {
            final action = await DialogCompleted.deleteCancelAction(context,
                'Are you sure you completed the project?', 'Enter Pin');
            if (action == CompletedDialogAction.submit) {
              Navigator.of(context).canPop();
            } else {
              Navigator.of(context).canPop();
            }
          },
          color: Colors.green,
          splashColor: Colors.greenAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          icon: Icon(
            Icons.done,
            color: Colors.white,
          ),
          label: Text(
            'Completed',
            style: TextStyle(color: Colors.white, letterSpacing: 2.0),
          ),
        ),
      ),
    );
  }
}
// //---------------------------------------------------------------------------------
// Container(
//   height: MediaQuery.of(context).size.height / 3,
//   // width: 50,
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(10.0),
//   ),
//   child: FlipCard(
//     direction: FlipDirection.HORIZONTAL,
//     front: Container(
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10.0),
//           color: Colors.red),
//       child: Center(
//         child: Column(
//           children: <Widget>[
//             Icon(
//               Icons.done_all,
//               color: Colors.white,
//               size: 45,
//             ),
//             Text(
//               'Finalize Project',
//               style:
//                   TextStyle(color: Colors.white, fontSize: 32.0),
//             ),
//             Container(
//               padding: EdgeInsets.all(30),
//               margin: EdgeInsets.all(30.0),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.0),
//                   color: Colors.grey),
//               child: Center(
//                   child: Text(
//                 'Once the project is Finalized cannot be retrived or undone',
//                 style: TextStyle(fontSize: 20.0),
//               )),
//             )
//           ],
//         ),
//       ),
//     ),
//     back: Container(
//       height: MediaQuery.of(context).size.height / 3,
//       width: double.infinity,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10.0),
//           color: Colors.white),
//       child: Row(
//         children: <Widget>[
//           // Container(
//           //     // height: double.infinity,
//           //     width: MediaQuery.of(context).size.width / 2.5,
//           //     decoration: BoxDecoration(
//           //         borderRadius: BorderRadius.only(
//           //             topLeft: Radius.circular(10.0),
//           //             bottomLeft: Radius.circular(10.0)),
//           //         color: Colors.grey),
//           //     child: Column(
//           //       children: <Widget>[
//           //         SizedBox(
//           //           height: 20.0,
//           //         ),
//           //         CircleAvatar(
//           //             backgroundColor: Colors.white,
//           //             child: Icon(
//           //               Icons.drafts,
//           //               color: Colors.red,
//           //               size: 35.0,
//           //             )),
//           //         Container(
//           //           decoration: BoxDecoration(
//           //               borderRadius:
//           //                   BorderRadius.circular(10.0),
//           //               color: Colors.green),
//           //           margin: EdgeInsets.symmetric(
//           //               horizontal: 20, vertical: 10),
//           //           padding: EdgeInsets.all(10.0),
//           //           child: Center(
//           //             child: Text(
//           //               'Select green if Project Completed',
//           //               style: TextStyle(
//           //                   fontSize: 14.0,
//           //                   color: Colors.white),
//           //             ),
//           //           ),
//           //         ),
//           //         Container(
//           //           child: CircleAvatar(
//           //             backgroundColor: Colors.white,
//           //             child: Text(
//           //               'Or',
//           //               style: TextStyle(
//           //                   color: Colors.red,
//           //                   fontWeight: FontWeight.bold),
//           //             ),
//           //           ),
//           //         ),
//           //         Container(
//           //           margin: EdgeInsets.symmetric(
//           //               horizontal: 30, vertical: 10),
//           //           padding: EdgeInsets.all(10.0),
//           //           decoration: BoxDecoration(
//           //               borderRadius:
//           //                   BorderRadius.circular(10.0),
//           //               color: Colors.red),
//           //           child: Center(
//           //             child: Text(
//           //               'Select Red if Project to be cancelled',
//           //               style: TextStyle(
//           //                   fontSize: 14.0,
//           //                   color: Colors.white),
//           //             ),
//           //           ),
//           //         ),
//           //       ],
//           //     )),

//           Column(
//             // mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               Container(
//                 height: MediaQuery.of(context).size.height / 7.5,
//                 margin: EdgeInsets.all(10.0),
//                 width: MediaQuery.of(context).size.width / 2,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.0),
//                     color: Colors.green,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.green,
//                         blurRadius: 20.0,
//                       )
//                     ]),
//                 child: FlatButton.icon(
//                   onPressed: () async {
//                     final action =
//                         await DialogCompleted.deleteCancelAction(
//                             context,
//                             'Are you sure you completed the project?',
//                             'Enter Pin');
//                     if (action == CompletedDialogAction.submit) {
//                       Navigator.of(context).canPop();
//                     } else {
//                       Navigator.of(context).canPop();
//                     }
//                   },
//                   color: Colors.green,
//                   splashColor: Colors.greenAccent,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10.0)),
//                   icon: Icon(
//                     Icons.done,
//                     color: Colors.white,
//                   ),
//                   label: Text(
//                     'Complete',
//                     style: TextStyle(
//                         color: Colors.white, letterSpacing: 2.0),
//                   ),
//                 ),
//               ),
//               Container(
//                 height: MediaQuery.of(context).size.height / 7.5,
//                 margin: EdgeInsets.all(10.0),
//                 width: MediaQuery.of(context).size.width / 2,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.0),
//                     color: Colors.red,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.red,
//                         blurRadius: 20.0,
//                         // spreadRadius: 10.0
//                       )
//                     ]),
//                 child: RaisedButton.icon(
//                   onPressed: () async {
//                     final action =
//                         await DialogCancel.deleteCancelAction(
//                             context,
//                             'Are you sure to Delete/Cancel the Project?',
//                             'Enter Pin');
//                     if (action ==
//                         CancelProjectDialogAction.delete) {
//                       Navigator.of(context).canPop();
//                     } else {
//                       Navigator.of(context).canPop();
//                     }
//                   },
//                   color: Colors.red,
//                   splashColor: Colors.redAccent,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10.0)),
//                   icon: Icon(
//                     Icons.cancel,
//                     color: Colors.white,
//                   ),
//                   label: Text(
//                     'Cancel',
//                     style: TextStyle(
//                         color: Colors.white, letterSpacing: 2.0),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//     ),
//   ),
// ),

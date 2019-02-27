import 'package:flutter/material.dart';

enum RemoveDialogActions { remove, cancel }

class DialogRemoveEmployee {
  static Future<RemoveDialogActions> removeCancelAction(
      BuildContext context) async {
    Function action = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Container(
              height: MediaQuery.of(context).size.height / 1.7,
              width: 200.0,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
              child: ListView(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 150,
                      ),
                      Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0))),
                        child: Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              padding: EdgeInsets.all(10.0),
                              icon: Icon(
                                Icons.close,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            )),
                      ),
                      Positioned(
                        top: 50,
                        left: 94.0,
                        child: Container(
                          height: 90.0,
                          width: 90.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45.0),
                              border: Border.all(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/tom.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 35.0),
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        'Do you want to remove ${'Tom'} from the project?',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Access Pin',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      obscureText: true,
                      maxLength: 6,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.all(10.0),
                    child: RaisedButton.icon(
                        highlightElevation: 30.0,
                          onPressed: () {
                            Navigator.of(context).pop();
                            // Navigator.of(context).pop(RemoveDialogActions.remove);
                          },
                          label: Text(
                            'Remove',
                            style: TextStyle(color: Colors.white),
                          ),
                          icon: Icon(
                            Icons.cancel,
                            color: Colors.white,
                          ),
                          color: Colors.red,
                          splashColor: Colors.redAccent,
                          shape: roundedRectangleBorder(),
                        ),
                  ),
                  
                ],
              ),
            ),
          );
        });
    return (action != null) ? action : RemoveDialogActions.remove;
  }

  static RoundedRectangleBorder roundedRectangleBorder() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    );
  }
}

// import 'package:flutter/material.dart';

// enum RemoveDialogActions { remove, cancel }

// class DialogRemoveEmployee {
//   static Future<RemoveDialogActions> removeCancelAction(
//       BuildContext context, String title, String body) async {
//     Function action = await showDialog(
//         context: context,
//         barrierDismissible: true,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             shape: roundedRectangleBorder(),
//             title: Text(title),
//             content: TextFormField(
//               obscureText: true,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 labelText: body,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//               ),
//             ),
//             actions: <Widget>[
//               RaisedButton.icon(
//                 onPressed: () {
//                   Navigator.of(context).pop(RemoveDialogActions.remove);
//                 },
//                 label: Text(
//                   'Remove',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 icon: Icon(
//                   Icons.cancel,
//                   color: Colors.white,
//                 ),
//                 color: Colors.red,
//                 splashColor: Colors.redAccent,
//                 shape: roundedRectangleBorder(),
//               ),
//               FlatButton(
//                   onPressed: () {
//                     Navigator.of(context).pop(RemoveDialogActions.cancel);
//                   },
//                   child: Text(
//                     'Cancel',
//                     style: TextStyle(color: Colors.black54),
//                   ),
//                   color: Colors.white),
//             ],
//           );
//         });
//     return (action != null) ? action : RemoveDialogActions.remove;
//   }

//   static RoundedRectangleBorder roundedRectangleBorder() {
//     return RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(10.0),
//     );
//   }
// }

import 'package:flutter/material.dart';

enum AccessDialogActions { access, cancel }

class DialogAccessManageEmployee {
  static Future<AccessDialogActions> accessCancelAction(
      BuildContext context) async {
    Function action = await showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: 200.0,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
              child: ListView(
                children: <Widget>[
                  Container(
                        height: 65,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blue,
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
                  // Stack(
                  //   children: <Widget>[
                  //     Container(
                  //       height: 100,
                  //     ),
                      
                  //     // Positioned(
                  //     //   top: 50,
                  //     //   left: 94.0,
                  //     //   child: Container(
                  //     //     height: 90.0,
                  //     //     width: 90.0,
                  //     //     decoration: BoxDecoration(
                  //     //         borderRadius: BorderRadius.circular(45.0),
                  //     //         border: Border.all(
                  //     //             color: Colors.white,
                  //     //             style: BorderStyle.solid,
                  //     //             width: 2.0),
                  //     //         image: DecorationImage(
                  //     //             image: AssetImage('assets/tom.jpg'),
                  //     //             fit: BoxFit.cover)),
                  //     //   ),
                  //     // ),
                  //   ],
                  // ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 35.0),
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        'Access Pin required for managing Employees',
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
                        Navigator.of(context).pushNamed('/controlEmployees');
                      },
                      label: Text(
                        'Access',
                        style: TextStyle(color: Colors.white),
                      ),
                      icon: Icon(
                        Icons.security,
                        color: Colors.white,
                      ),
                      color: Colors.blue,
                      splashColor: Colors.lightBlue,
                      shape: roundedRectangleBorder(),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
    return (action != null) ? action : AccessDialogActions.access;
  }

  static RoundedRectangleBorder roundedRectangleBorder() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    );
  }
}

import 'package:flutter/material.dart';

enum ForgotPasswordDialogAction { submit, cancel }

class Dialogs {
  static Future<ForgotPasswordDialogAction> yesSubmitDialog(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            title: Text(title,style: TextStyle(color: Colors.deepPurple),),
            
            content: Container(
              height: MediaQuery.of(context).size.height / 5,
              child: Column(children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      labelText: body,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text('Reset your password through Email Or Phone Number'),
              ]),
            ),
            actions: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop(ForgotPasswordDialogAction.submit);
                },
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(ForgotPasswordDialogAction.cancel);
                },
                child: Text('Cancel'),
              ),
            ],
          );
        });
    return (action != null) ? action : ForgotPasswordDialogAction.cancel;
  }
}



import 'package:flutter/material.dart';

enum CompletedDialogAction { submit, cancel }

class DialogCompleted {
  static Future<CompletedDialogAction> deleteCancelAction(
      BuildContext context, String title, String body) async {
    final action = await showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            title: Text(title),
            content: Container(
              height: MediaQuery.of(context).size.height / 5,
              child: Column(children: <Widget>[
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: body,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text('Confirm the pin to complete project (For Security Reason)*'),
              ]),
            ),
            actions: <Widget>[
              RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pop(CompletedDialogAction.submit);
                  },
                  child: Text('submit',style: TextStyle(color: Colors.white),),
                  color: Colors.deepPurple
                ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(CompletedDialogAction.cancel);
                },
                child: Text('Cancel'),
              ),
            ],
          );
        });
    return (action != null) ? action : CompletedDialogAction.submit;
  }
}

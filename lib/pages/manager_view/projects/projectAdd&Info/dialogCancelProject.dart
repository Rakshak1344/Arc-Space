import 'package:flutter/material.dart';

enum CancelProjectDialogAction { delete, cancel }

class DialogCancel {
  static Future<CancelProjectDialogAction> deleteCancelAction(
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
              height: MediaQuery.of(context).size.height / 2.5,
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
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Reason',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text('To cancel the project confirm pin and provide Reason (mandetory for security purpose)*'),
              ]),
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop(CancelProjectDialogAction.delete);
                  },
                  
                  child: Text('submit',style: TextStyle(color: Colors.white),),
                  color: Colors.deepPurple,
                ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(CancelProjectDialogAction.cancel);
                },
                child: Text('Cancel'),
              ),
            ],
          );
        });
    return (action != null) ? action : CancelProjectDialogAction.delete;
  }
}

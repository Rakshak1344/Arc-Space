import 'package:flutter/material.dart';

enum DialogAction{yes,abort}
class Dialogs{
  static Future<DialogAction> yesAbortDialog(
    BuildContext context,
    String title,
    String body,
  )async{
    final action =await showDialog(context: context,barrierDismissible: true,builder: (BuildContext context){
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        title: Text(title),
        content: Text(body),
        actions: <Widget>[
          FlatButton(
            onPressed: (){
              Navigator.of(context).pop(DialogAction.yes);

            },
            child: Text('Yes'),
          ),
          RaisedButton(
            onPressed: (){
              Navigator.of(context).pop(DialogAction.abort);
            },
            child: Text('No',style: TextStyle(color: Colors.white),),
          ),
          
        ],
      );
    });
    return (action != null)? action :DialogAction.abort;
  } 
}
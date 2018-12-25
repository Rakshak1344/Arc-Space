/**
 * page not in use 
 * 
*/




import 'package:flutter/material.dart';

class ForgotPass extends StatefulWidget {
  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  var card = new Card(
    elevation: 4.0,
    color: Colors.blue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    margin: EdgeInsets.all(60),
    child: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.only(top: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'xyz@mail.com', labelText: 'Email'),
                ),
              ),
            
          ],
        )
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return card;
  }
}

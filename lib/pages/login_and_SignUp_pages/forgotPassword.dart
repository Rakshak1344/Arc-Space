import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  // Widget build(BuildContext context) {
  //   return _buildForgotPasswordDialog(context);
    
  // }
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.white,
        home: Scaffold(
            backgroundColor: Colors.white,
            body: Align(
              alignment: Alignment.center,
              child: Wrap(
                spacing: 8.0,
                runSpacing: 4.0,
                direction: Axis.horizontal,
                children: <Widget>[_buildForgotPasswordDialog(context)],
              ),
            )));
  }

  Dialog _buildForgotPasswordDialog(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Container(
        height: 450.0,
        width: 200.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 150,
                ),
                Container(
                  
                  height: 100.0,
                  decoration: BoxDecoration(
                    
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                      color: Colors.blueGrey),
                ),
                Positioned(
                  top: 50,
                  left: 94.0,
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
                            color: Colors.blueGrey,
                            style: BorderStyle.solid,
                            width: 5.0)),
                  ),
                )
              ],
            ),
            // SizedBox(
            //   height: 10.0,
            // ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0, bottom: 0.0),
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: double.infinity,
                  height: 1.5,
                  color: Colors.black,
                ),
              ),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Padding(
                    padding: EdgeInsets.only(top: 1.0),
                    child: Container(
                      child: Text(
                        'Reset password through email',
                        style:
                            TextStyle(color: Colors.blueGrey, fontSize: 18.0),
                      ),
                    ))),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: double.infinity,
                  height: 1.5,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.blueGrey,
                decoration: InputDecoration(
                    labelText: 'Email', 
                    hintText: 'xyz@mail.com',
                    icon: Icon(Icons.alternate_email,color: Colors.red,),
                    // focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(8.0),),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text('Submit'),
                    color: Colors.blueGrey,
                    textColor: Colors.white,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.blueGrey,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    
                    setState(() {
                      Navigator.of(context).pop('/managerLoginPage');
                      Navigator.of(context).pop('/employeeLoginPage');
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

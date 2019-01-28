import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Container(
            child: Column(
          children: <Widget>[
            buildLogo(context),
            Center(
              child: Text(
                'Aspire the space of Construction',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: 'Megrim',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Center(
                  child: AspectRatio(
                    aspectRatio: 100 / 55,
                    child: Container(
                      margin: EdgeInsets.only(top: 55.0),
                      // height: MediaQuery.of(context).devicePixelRatio * 42,
                      // width: double.infinity,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(color: Colors.white70),
                    ),
                  ),
                ),
                Positioned(
                  child: card(context),
                )
              ],
            ),
          ],
        )));
  }

  Container card(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              // color: Colors.deepOrange,
              height: MediaQuery.of(context).size.height / 4.5,
              width: double.infinity,
              margin: EdgeInsets.all(10.0),
              child: Card(
                elevation: 10.0,
                margin: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(75.0),
                                    color: Colors.deepPurple),
                                child: CircleAvatar(
                                  radius: 30.0,
                                  backgroundColor: Colors.deepPurple,
                                  child: IconButton(
                                    splashColor: Colors.deepPurple,
                                    icon: Icon(
                                      Icons.card_travel,
                                      color: Colors.white,
                                      size: 30.0,
                                    ),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed('/managerLoginPage');
                                    },
                                  ),
                                )),
                            Text('Manager',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontFamily: 'Megrim',
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(10.0),
                          height: 30,
                          width: 4.0,
                          color: Colors.deepPurple,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(75.0),
                                    color: Colors.deepPurple),
                                child: CircleAvatar(
                                  radius: 30.0,
                                  backgroundColor: Colors.deepPurple,
                                  child: IconButton(
                                    splashColor: Colors.deepPurple,
                                    icon: Icon(
                                      Icons.person,
                                      color: Colors.white,
                                      size: 30.0,
                                    ),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed('/employeeLoginPage');
                                    },
                                  ),
                                )),
                            Text('Employee',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontFamily: 'Megrim',
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildLogo(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
        height: MediaQuery.of(context).size.height / 1.6,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/logo.png'), fit: BoxFit.fill)));
  }
}

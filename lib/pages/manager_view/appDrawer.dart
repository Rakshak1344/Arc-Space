import 'package:flutter/material.dart';
import 'package:login/pages/manager_view/dialog.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool tappedYes = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.deepPurple,width: 2.0),
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: FlatButton(
                  child: Icon(
                    Icons.power_settings_new,
                    color: Colors.red,
                  ),
                  onPressed: () async {
                    final action = await Dialogs.yesAbortDialog(
                        context, 'Logout', 'Are You Sure?');
                    if (action == DialogAction.yes) {
                      setState(() {
                        Navigator.of(context).pushNamed('/home');
                      });
                    } else {
                      Navigator.of(context).pop();
                    }
                  },
                  splashColor: Colors.grey,
                ),
            ),

            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).popAndPushNamed('/managerProfile');
              },
              splashColor: Colors.deepPurple,
              child: Center(
                  child: Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/tom.jpg'),
                    radius: 35.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Tom',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w500),
                  ),
                ],
              )),
            ),
            // divider(),
            Divider(),
            buildMenuItem(icon: Icons.settings,iconColor: Colors.blueGrey, title: 'Settings',route: '/settingsManager'),
            Divider(),
            buildMenuItem(
                icon: Icons.color_lens,
                iconColor: Colors.teal,
                title: 'Sketch Pad',
                route: '/sketchPad'),
            // divider(),
            Divider(),
            
            buildMenuItem(icon: Icons.close,iconColor: Colors.red, title: 'Close', route: null),
            // Divider(),
          ],
        ),
      ),
    );
  }

  // Container divider() {
  //   return Container(
  //           margin: EdgeInsets.only(right: 50.0,left: 50.0),
  //           height: 2,
          
  //           decoration: BoxDecoration(
  //             color: Colors.blueGrey
  //           ),
  //         );
  // }

  Opacity buildMenuItem(
      {IconData icon,
      String title,
      Color iconColor = Colors.black,
      Color iconTextColor = Colors.black,
      double opacity = 1.0,
      String route}) {
    return Opacity(
      opacity: opacity,
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(route);
              },
              splashColor: Colors.deepPurple,
              icon: Icon(icon),
              iconSize: 50.0,
              color: iconColor,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                  color: iconTextColor),
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}

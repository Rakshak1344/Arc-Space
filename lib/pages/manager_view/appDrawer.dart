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
    return SizedBox(
      width: 150,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: FlatButton.icon(
                icon: Icon(
                  Icons.power_settings_new,
                  color: Colors.red,
                ),
                label: Text('Logout',
                    style: TextStyle(
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                        color: Colors.black)),
                splashColor: Colors.grey,
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
                    radius: 50.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Tom',
                    style: TextStyle(
                        color: Colors.deepOrange, fontWeight: FontWeight.w500),
                  ),
                ],
              )),
            ),
            // Divider(),
            buildMenuItem(icon: Icons.settings, title: 'Settings'),
            Divider(),
            buildMenuItem(
                icon: Icons.color_lens,
                title: 'Sketch Pad',
                route: '/sketchPad'),
            Divider(),
            buildMenuItem(icon: Icons.close, title: 'Close',route: null),
            Divider(),
          ],
        ),
      ),
    );
  }

  Opacity buildMenuItem(
      {IconData icon,
      String title,
      Color color = Colors.black,
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
              color: Colors.grey,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                  color: Colors.grey),
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

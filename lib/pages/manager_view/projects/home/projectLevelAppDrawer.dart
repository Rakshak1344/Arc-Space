import 'package:flutter/material.dart';

class ProjectLevelAppDrawer extends StatefulWidget {
  @override
  _ProjectLevelAppDrawerState createState() => _ProjectLevelAppDrawerState();
}

class _ProjectLevelAppDrawerState extends State<ProjectLevelAppDrawer> {
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
                  Icons.home,
                  color: Colors.red,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/managerHomePage');
                },
                label: Text('Home',
                    style: TextStyle(
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                        color: Colors.black)),
                splashColor: Colors.grey,
              ),
            ),
            buildMenuItem(
                icon: Icons.add, title: 'Add Project', route: '/addProject'),
            Divider(),
            buildMenuItem(
                icon: Icons.done, title: 'Completed Project', route: ''),
            Divider(),
            buildMenuItem(
                icon: Icons.close, title: 'Canceled Project', route: ''),
            Divider(),
            buildMenuItem(
                icon: Icons.color_lens, title: 'Sketch', route: '/sketchPad'),
            // Divider(),
            // buildMenuItem(icon: Icons.settings, title: 'Settings', route: ''),
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
              icon: Icon(icon),
              iconSize: 50.0,
              splashColor: Colors.deepPurple,
              color: Colors.grey,
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, route);
              },
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

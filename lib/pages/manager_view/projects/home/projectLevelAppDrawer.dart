import 'package:flutter/material.dart';

class ProjectLevelAppDrawer extends StatefulWidget {
  @override
  _ProjectLevelAppDrawerState createState() => _ProjectLevelAppDrawerState();
}

class _ProjectLevelAppDrawerState extends State<ProjectLevelAppDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                  Icons.home,
                  color: Colors.red,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/managerHomePage');
                },
                splashColor: Colors.grey,
              ),
            ),
            buildMenuItem(
                icon: Icons.add,iconColor: Colors.blue, title: 'Add Project', route: '/addProject'),
            Divider(),
            buildMenuItem(
                icon: Icons.done,iconColor: Colors.green, title: 'Completed', route: ''),
            Divider(),
            buildMenuItem(
                icon: Icons.close,iconColor: Colors.red, title: 'Canceled', route: ''),
            Divider(),
            buildMenuItem(
                icon: Icons.color_lens,iconColor: Colors.teal, title: 'Sketch', route: '/sketchPad'),
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
      Color iconColor = Colors.black,
      Color textColor = Colors.black,
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
              color: iconColor,
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
                  color: textColor),
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

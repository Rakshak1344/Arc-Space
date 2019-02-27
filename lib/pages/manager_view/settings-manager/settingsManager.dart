import 'package:flutter/material.dart';
import 'package:login/pages/manager_view/settings-manager/accessPinReset.dart';
import 'package:login/pages/manager_view/settings-manager/profilePasswordReset.dart';

class SettingsManager extends StatefulWidget {
  @override
  _SettingsManagerState createState() => _SettingsManagerState();
}

class _SettingsManagerState extends State<SettingsManager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: managerSettingsAppBar(),
      body: ListView(
        children: <Widget>[
          
          Container(
            color: Colors.redAccent,
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Text('Profile Password Reset',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.lock_outline,
                  color: Colors.red,
                ),
              ),
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.deepPurple),
                    child: ProfilePasswordReset()),
              ],
            ),
          ),
          Divider(),
          Container(
            color: Colors.blueGrey,
            child: ExpansionTile(
              initiallyExpanded: false,
              title: Text('Access Pin Reset',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.fiber_pin,
                  color: Colors.blueGrey,
                ),
              ),
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.deepPurple),
                  child: AccessPinReset(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar managerSettingsAppBar() {
    return AppBar(
      elevation: 0.0,
      title: Text('Manager Settings'),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.face,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

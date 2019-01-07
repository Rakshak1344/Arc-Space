// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login/pages/manager_view/manageExploreCards.dart';

class ManagerHomePage extends StatefulWidget {
  @override
  _ManagerHomePageState createState() => _ManagerHomePageState();
}

class _ManagerHomePageState extends State<ManagerHomePage> {
  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      elevation: 0.0,
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    // image: AssetImage('assets/desk.jpg'),
                    image: AssetImage('assets/desk1.jpg'),
                    fit: BoxFit.cover)),
            accountName: Text('Rakshith'),
            accountEmail: Text("rakshithgajendra@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('R'),
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('G'),
              )
            ],
          ),
          ListTile(
            title: Text('Account Settings'),
            trailing: Icon(Icons.account_circle, color: Colors.deepPurple),
            onTap: () {},
          ),
          // ListTile(
          //   title: Text('Manage Employee'),
          //   trailing: Icon(Icons.add, color: Colors.deepPurple),
          // ),
          // ListTile(
          //   title: Text('Attendance'),
          //   trailing: Icon(Icons.note),
          // ),
          ListTile(
            title: Text('Sketch Pad'),
            trailing: Icon(Icons.color_lens, color: Colors.deepPurple),
            onTap: () => Navigator.of(context).pushNamed('/sketchPad'),
          ),
          ListTile(
            title: Text('Settings'),
            trailing: Icon(
              Icons.settings,
              color: Colors.deepPurple,
            ),
          ),
          ListTile(
            title: Text('close'),
            trailing: Icon(Icons.close, color: Colors.deepPurple),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   // color: Color(0xff7c94b6),
      //   image: DecorationImage(
      //     image: AssetImage('assets/background2.jpg'),
      //     fit: BoxFit.cover,
      //     colorFilter: ColorFilter.mode(
      //         Colors.black.withOpacity(0.5), BlendMode.dstATop),
      //   ),
      // ),
      
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          // elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
          elevation: 0.0,
          // titleSpacing: 10.0,

          title: Text(
            'Hi! Rakshith',
            style: TextStyle(letterSpacing: 5.0),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        drawer: buildDrawer(context),

        body: MainContent(),
      ),
    );
  }
}



// Align(
//           alignment: Alignment.center,

//             child: Container(
//               padding: EdgeInsets.all(20.0),
//               child: Text(
//                 'Manager view on-process',
//                 style: TextStyle(color: Colors.white, fontSize: 30.0),
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.blueGrey,
//                 border: Border.all(color: Colors.white,width: 3.0)
//                 // shape: BoxShape.rectangle,
//               ),
//             ),

//         )

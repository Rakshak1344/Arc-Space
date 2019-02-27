import 'package:flutter/material.dart';

class NotifyManager extends StatefulWidget {
  @override
  _NotifyManagerState createState() => _NotifyManagerState();
}

class _NotifyManagerState extends State<NotifyManager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: notifyAppbar(),
      body: ListView(
        children: <Widget>[
          notificationMessageModel(
              empImg: AssetImage('assets/tom.jpg'),
              empName: 'Sam',
              empDesignation: 'Juniour Architect',
              empMessage:
                  'Hello Tom! Good Morning, The project is completed, please finalize the action. If any work is pending on my side please let me know   -Thank you',
              messageReceivedTime: '09:45 AM'),
          notificationMessageModel(
              empImg: AssetImage('assets/room.jpg'),
              empName: 'Ram',
              empDesignation: 'Store Keeper',
              empMessage:
                  'Hello Tom! Good Morning, New product has arrived at cross street',
              messageReceivedTime: '5:01 PM'
              )
        ],
      ),
    );
  }

  Container notificationMessageModel(
      {AssetImage empImg,
      String empName,
      String empDesignation,
      String empMessage,
      String messageReceivedTime}) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 5.0,
              bottom: 5.0,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                color: Colors.blueGrey),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: empImg,
              ),
              title: Text(
                empName,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 3),
              ),
              subtitle: Text(
                empDesignation,
                style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 3),
              ),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              empMessage,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18.0),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                messageReceivedTime,
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w800),
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar notifyAppbar() {
    return AppBar(
      elevation: 0.0,
      title: Center(child: Text('Notification')),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.expand_more),
        )
      ],
    );
  }
}

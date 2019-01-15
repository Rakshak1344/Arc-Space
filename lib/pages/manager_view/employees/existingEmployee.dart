import 'package:flutter/material.dart';

class ExistingEmployee extends StatefulWidget {
  @override
  _ExistingEmployeeState createState() => _ExistingEmployeeState();
}

class _ExistingEmployeeState extends State<ExistingEmployee> {
  Card appbarCard(BuildContext context) {
    return Card(
      child: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Existing Employees'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            setState(() {
              Navigator.of(context).pop();

              // Navigator.of(context).popAndPushNamed('/managerHomePage');
            });
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  ListTile empListTile({String name, String designation, AssetImage img}) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: img,
      ),
      title: Text(name),
      subtitle: Text(
        designation,
        style: TextStyle(color: Colors.grey),
      ),
      trailing: Icon(
        Icons.info,
        color: Colors.deepPurple,
      ),
    );
  }

  Divider divider() {
    return Divider(
      height: 1.0,
      color: Colors.blueGrey,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10.0),
          margin:
              EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0, bottom: 10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: Colors.white),
          child: ListView(
            children: <Widget>[
              appbarCard(context),
              empListTile(
                  name: 'Tom',
                  designation: 'Project Executitve',
                  img: AssetImage('assets/tom.jpg')),
              divider(),
              empListTile(
                  name: 'Tom',
                  designation: 'Project Executitve',
                  img: AssetImage('assets/tom.jpg')),
              divider(),
              empListTile(
                  name: 'Tom',
                  designation: 'Project Executitve',
                  img: AssetImage('assets/tom.jpg')),
              divider(),
              empListTile(
                  name: 'Tom',
                  designation: 'Project Executitve',
                  img: AssetImage('assets/tom.jpg')),
              divider(),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:login/pages/manager_view/searchBar.dart';

class RemovedOrRetired extends StatefulWidget {
  @override
  _RemovedOrRetiredState createState() => _RemovedOrRetiredState();
}

class _RemovedOrRetiredState extends State<RemovedOrRetired> {
  
  Container buildMostRecentBox({String title}) {
    return Container(
      padding: EdgeInsets.all(1.0),
      decoration: BoxDecoration(color: Colors.grey),
      width: double.infinity,
      child: Center(
          child: Text(
        title,
        softWrap: true,
        style: TextStyle(color: Colors.white, fontSize: 18.0),
      )),
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

   Card appBarCard(BuildContext context) {
    return Card(
      child: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Ex-Employees'),
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
            onPressed: () {
              showSearch(context: context,delegate: DataSearch());
            },
          )
        ],
      ),
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
              appBarCard(context),
              box(),
              buildMostRecentBox(title: 'Retired Employee'),
              box(),
              empListTile(
                  name: 'Tom',
                  designation: 'Project Executitve',
                  img: AssetImage('assets/tom.jpg')),
              divider(),
              empListTile(
                  name: 'Tom',
                  designation: 'Project Executitve',
                  img: AssetImage('assets/tom.jpg')),
              box(),
              buildMostRecentBox(title: 'Removed Employee'),
              box(),
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

  SizedBox box() {
    return SizedBox(
      height: 20.0,
    );
  }

  Divider divider() {
    return Divider(
      height: 1.0,
      color: Colors.blueGrey,
    );
  }

 
}

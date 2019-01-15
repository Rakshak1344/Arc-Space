import 'package:flutter/material.dart';

class EmployeeView extends StatefulWidget {
  @override
  _EmployeeViewState createState() => _EmployeeViewState();
}

class _EmployeeViewState extends State<EmployeeView> {
  Container buildSelectContainer(
      {String route, String nameSelect, Color color, Icon icon}) {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: color),
      child: Center(
        child: ListTile(
          onTap: () {
            Navigator.of(context).pushNamed(route);
          },
          leading: IconButton(
            icon: icon,
            color: Colors.white,
            iconSize: 50.0,
            onPressed: null,
          ),
          title: Text(
            nameSelect,
            softWrap: true,
            style: TextStyle(color: Colors.white, fontSize: 22.0),
          ),
          trailing: Icon(
            Icons.arrow_right,
            color: Colors.white,
            size: 50.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text(
          'Employee\'s view',
          style: TextStyle(letterSpacing: 1.0),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.deepPurple,
          ),
          child: ListView(
            children: <Widget>[
              buildSelectContainer(
                nameSelect: 'My Employees',
                color: Colors.blue,
                icon: Icon(Icons.group),
                route: '/existingEmployee',
              ),
              SizedBox(
                height: 10.0,
              ),
              buildSelectContainer(
                  nameSelect: 'Add Employee',
                  color: Colors.green,
                  icon: Icon(Icons.person_add),
                  route: '/addEmployee'),
              SizedBox(
                height: 10.0,
              ),
              buildSelectContainer(
                  nameSelect: 'Ex-Employees',
                  color: Colors.red,
                  icon: Icon(Icons.remove_circle_outline),
                  route: '/exEmployees'),
            ],
          )),
    );
  }
}

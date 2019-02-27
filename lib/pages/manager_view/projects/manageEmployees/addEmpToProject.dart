import 'package:flutter/material.dart';

class AddEmpToProject extends StatefulWidget {
  @override
  _AddEmpToProjectState createState() => _AddEmpToProjectState();
}

class _AddEmpToProjectState extends State<AddEmpToProject> {
  int _isSelected = null;
  

  Container addEmpListTile(int index) {
    return Container(
        margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: Colors.white),
        child: Container(
          child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/tom.jpg'),
              ),
              title: Text('Sam'),
              subtitle: Text('Site Manager'),
              trailing: InkWell(
                  onTap: () {
                    setState(() {
                      _isSelected = index;
                    });
                  },
                  child: _isSelected == index
                      ? Icon(
                          Icons.done,
                          color: Colors.green,
                          size: 35.0,
                        )
                      : Icon(
                          Icons.add,
                          color: Colors.deepPurple,
                          size: 35.0,
                        ))
          ),
        ));
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text('Add Employees'),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.done,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return addEmpListTile(index);
        },
      ),
    );
  }
}

// floatingActionButton: CircleAvatar(
//     backgroundColor: Colors.white,
//     radius: 30,
//     child: Icon(
//       Icons.done,
//       color: Colors.deepPurple,
//     )),
// body: Column(
//   children: <Widget>[
//     Container(
//       height: MediaQuery.of(context).size.height / 1.25,
//       child: Column(
//         children: <Widget>[
//           ListView(
//             children: <Widget>[
//               addEmpListTile(),
//               addEmpListTile(),
//             ],
//           ),
//           Container(
//             height: 50,
//             width: double.infinity,
//             alignment: Alignment.bottomCenter,
//           )
//         ],
//       ),
//     ),
//   ],
// )

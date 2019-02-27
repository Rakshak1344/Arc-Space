import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import './info.dart';
import 'package:login/pages/manager_view/projects/manageEmployees/dialogRemoveEmployee.dart';

class ControlEmployees extends StatefulWidget {
  @override
  _ControlEmployeesState createState() => _ControlEmployeesState();
}

class _ControlEmployeesState extends State<ControlEmployees> {
  List<String> empTile = [];
  AppBar buildAppBar() {
    return AppBar(
    
      elevation: 0.0,
      title: Text('Manage'),
      actions: <Widget>[
        IconButton(
            onPressed: () async {
              await Info.info(context);
              // final action = await Info.info(context);
              // if(action == InfoEmp.okay){
              //   Navigator.of(context).canPop();
              // }
            },
            icon: Icon(
              Icons.info,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/addEmpToProject');
            },
            icon: Icon(
              Icons.add,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
     
      appBar: buildAppBar(),
      body: ListView.builder(
        itemCount: 8,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return workingEmpListTile();
        },
      ),
    );
  }

  Container workingEmpListTile() {
    return Container(
        margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: Colors.white),
        child: Slidable(
          delegate: SlidableDrawerDelegate(),
          actionExtentRatio: 0.25,
          child: Container(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/tom.jpg'),
              ),
              title: Text('Sam'),
              subtitle: Text('Site Manager'),
              trailing: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/individualProfile');
                },
                icon: Icon(
                  Icons.info_outline,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
          actions: <Widget>[
            IconSlideAction(
              caption: 'More',
              color: Colors.black54,
              icon: Icons.more_horiz,
            ),
          ],
          secondaryActions: <Widget>[
            IconSlideAction(
              caption: 'Share',
              color: Colors.blue,
              icon: Icons.share,
            ),
            IconSlideAction(
                caption: 'Remove',
                color: Colors.red,
                icon: Icons.remove_circle_outline,
                onTap: () async {
                  final action =
                      await DialogRemoveEmployee.removeCancelAction(context);
                  if (action == RemoveDialogActions.remove) {
                    Navigator.of(context).canPop();
                  } else {
                    Navigator.of(context).canPop();
                  }
                })
          ],
        ));
  }
}

// final List<String> items = List<String>.generate(10, (i)=>"Tom");
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     backgroundColor: Colors.deepPurple,
//     appBar: buildAppBar(),
//     body: Container(
//       margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
//       padding: EdgeInsets.all(10.0),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10.0), color: Colors.white),
//       child: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context,int index){
//           return Dismissible(
//             key: Key(items[index]),
//             onDismissed: (direction){
//               items.removeAt(index);
//               Scaffold.of(context).showSnackBar(SnackBar(
//                 content: Text('Employee Removed'),
//               ));
//             },
//             direction: DismissDirection.endToStart,
//             background: Container(
//               width: 30,
//               color: Colors.red,
//               child: Column(
//                 children: <Widget>[
//                   Icon(Icons.delete,color: Colors.white,),
//                   SizedBox(height: 5,),
//                   Text('Remove'),
//                 ],
//               ),
//             ),
//             child: ListTile(
//               leading: CircleAvatar(
//                 backgroundImage: AssetImage('assets/tom.jpg'),
//               ),
//               title: Text('Sam'),
//               subtitle: Text('Site Manager'),
//               trailing: IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.info_outline,
//                   color: Colors.deepPurple,
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     ),
//   );
// }

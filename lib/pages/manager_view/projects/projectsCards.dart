import 'package:flutter/material.dart';
import 'package:login/pages/manager_view/projects/projectLevelAppDrawer.dart';
import 'package:login/pages/manager_view/projects/twoPanels.dart';

class ManageProjects extends StatefulWidget {
  @override
  _ManageProjectsState createState() => _ManageProjectsState();
}

class _ManageProjectsState extends State<ManageProjects>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 500), value: 5.0);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  bool get isPanelVisible {
    final AnimationStatus status = controller.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        drawer: ProjectLevelAppDrawer(),
        appBar: AppBar(
          title: Text('Manage Projects'),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
          // leading: IconButton(
          //   onPressed: (){
          //     controller.fling(velocity: isPanelVisible?-1.0:1.0);
          //   },
          //   icon: AnimatedIcon(
          //     icon: AnimatedIcons.home_menu,
          //     progress: controller.view,
          //   ),
          // ),
        ),
        // body: TwoPanels(controller: controller),
        body: Container(
          child: Stack(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(10.0),
                  // margin: EdgeInsets.only(bottom: 20.0),
                  // color: theme.primaryColor,
                  child: ListView(children: <Widget>[
                    CardProject(
                      projectImage: 'assets/project1.jpg',
                      projectAddress: '6th Avenu Circle Street',
                      projectTitle: 'Street Phase Mansion',
                    ),
                    CardProject(
                      projectImage: 'assets/project2.jpg',
                      projectAddress: '4th Avenu Square Street',
                      projectTitle: 'Square Street',
                    ),
                    CardProject(
                      projectImage: 'assets/room.jpg',
                      projectAddress: '14th Avenu cross Street',
                      projectTitle: 'Room Phase',
                    ),
                    SizedBox(
                      height: 10.0,
                    )
                  ])),
              // positionedTransitionManagerSpace(constraints, context)
            ],
          ),
        ));
  }
}



// class _ManageProjectsState extends State<ManageProjects> {
//   int _currentIndex = 0;
//   Widget callPage(int currentIndex) {
//     switch (currentIndex) {
//       case 0:
//         return ManagerOverView();
//         break;
//       case 1:
//         return AddProject();
//         break;
//       case 2:
//         return CancelProject();
//       default:
//         return ManagerOverView();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Container(
//         decoration: BoxDecoration(
//           color: Color(0xff7c94b6),
//           image: DecorationImage(
//             image: AssetImage('assets/background1.jpg'),
//             fit: BoxFit.cover,
//             colorFilter: ColorFilter.mode(
//                 Colors.black.withOpacity(0.5), BlendMode.dstATop),
//           ),
//         ),
//         child: Scaffold(

//             // backgroundColor: Colors.lightBlue,
//             // appBar: AppBar(

//             //   title: Text('Manage Projects'),
//             //   titleSpacing: 25.0,
//             //   elevation: 0.0,
//             //   backgroundColor: Colors.transparent,
//             // ),
//             body: callPage(_currentIndex),

//             bottomNavigationBar: BottomNavigationBar(
//               fixedColor: Colors.deepPurple,
//               type: BottomNavigationBarType.fixed,
//               currentIndex: _currentIndex,
//               onTap: (value) {

//                 setState(() {
//                   _currentIndex = value;
//                 });
//               },
//               items: [
//                 BottomNavigationBarItem(
//                     icon: Icon(
//                       Icons.view_stream,
//                       // color: Colors.deepPurple,
//                     ),
//                     title: Text('Overview')),
//                 BottomNavigationBarItem(
//                     icon: Icon(
//                       Icons.add,
//                       // color: Colors.deepPurple,
//                     ),
//                     title: Text('Add Project')),
//                 BottomNavigationBarItem(
//                     icon: Icon(
//                       Icons.cancel,
//                       // color: Colors.deepPurple,
//                     ),
//                     title: Text('Cancel Project')),
//               ],
//             ),

//             ),
//       ),
//     );
//   }
// }

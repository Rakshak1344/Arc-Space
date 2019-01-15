/**This should be placed under pages/manager_view/employees 
 * This page is not used for a reson
*/


// import 'package:flutter/material.dart';
// import 'package:login/pages/manager_view/employees/addEmployee.dart';

// import 'package:login/pages/manager_view/employees/existingEmployee.dart';

// class EmployeesPage extends StatefulWidget {
//   @override
//   _EmployeesPageState createState() => _EmployeesPageState();
// }

// class _EmployeesPageState extends State<EmployeesPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child:EmployeeHome(), 
//     );
//   }
// }

// class EmployeeHome extends StatefulWidget {
//   @override
//   _EmployeeHomeState createState() => _EmployeeHomeState();
// }

// class _EmployeeHomeState extends State<EmployeeHome>
//     with SingleTickerProviderStateMixin {
//   int _currentIndex = 0;

//   List<Widget> _tabList = [
//     ExistingEmployee(),
//     AddEmployee(),
//   ];

//   TabController _tabController;

//   @override
//   void initState() {
//     _tabController = TabController(vsync: this, initialIndex: 0, length: 2);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   // AppBar topBar() {
//   //   return AppBar(
//   //     backgroundColor: Colors.deepPurple,
//   //     elevation: 0.0,
//   //     title: Text('Employees View'),
//   //     leading: IconButton(
//   //       icon: Icon(Icons.arrow_back),
//   //       onPressed: () {},
//   //     ),
//   //     actions: <Widget>[
//   //       // IconButton(
//   //       //   icon: Icon(Icons.search),
//   //       //   onPressed: () {},
//   //       // )
//   //     ],
//   //   );
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Manage Employees'),
//         elevation: 0.0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () {},

//           )
//         ],
//         // bottom: TabBar(
//         //   controller: _tabController,
//         //   indicatorColor: Colors.white,
//         //   tabs: <Widget>[
//         //     Tab(
//         //         child: Column(
//         //       children: <Widget>[
//         //         Icon(Icons.person),
//         //         Text('Existing'),
//         //       ],
//         //     )),
//         //     Tab(
//         //         child: Column(
//         //       children: <Widget>[
//         //         Icon(Icons.person_add),
//         //         Text('Add Employee'),
//         //       ],
//         //     )),
//         //   ],
//         // ),
//       ),
//       // drawer:AppDrawerEmployee() ,
//       body: ExistingEmployee(),
//     );
//   }
// }
// //     return Scaffold(
// //       // appBar: topBar(),
// //       body: TabBarView(
// //         controller: _tabController,
// //         children: _tabList,
// //       ),

// //       bottomNavigationBar: BottomNavigationBar(
// //         fixedColor: Colors.deepPurple,
// //         currentIndex: _currentIndex,
// //         onTap: (currentIndex) {
// //           setState(() {
// //             _currentIndex = currentIndex;
// //             _tabController.animateTo(_currentIndex);
// //           });
          
// //         },
// //         items: [
// //           // BottomNavigationBarItem(
// //           //   icon: Icon(Icons.crop_din),
// //           //   title: Text('status')
// //           // ),

// //           BottomNavigationBarItem(
// //               icon: Icon(Icons.person),
// //               title: Text('Existing'),
// //               backgroundColor: Colors.deepPurple),
// //           BottomNavigationBarItem(
// //               icon: Icon(Icons.person_add),
// //               title: Text(
// //                 'Add Employee',
// //               )),
// //           // BottomNavigationBarItem(
// //           //   icon: Icon(Icons.person_add)
// //           // ),
// //         ],
// //       ),
// //       // bottomNavigationBar: Container(
// //       //   color: Colors.white,
// //       //   height: 50.0,

// //       //   child: BottomAppBar(
// //       //     child: Row(
// //       //       mainAxisAlignment: MainAxisAlignment.spaceAround,
// //       //       children: <Widget>[
// //       //       IconButton(
// //       //         icon: Icon(Icons.crop_din,),
// //       //         onPressed: (){},
// //       //       ),
// //       //       IconButton(
// //       //         icon: Icon(Icons.add),
// //       //         onPressed: (){
// //       //           Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>AddEmployee()));
// //       //         },
// //       //       ),
// //       //       IconButton(
// //       //         icon: Icon(Icons.person),
// //       //         onPressed: (){},
// //       //       ),
// //       //       IconButton(
// //       //         icon: Icon(Icons.person_add),
// //       //         onPressed: (){},
// //       //       ),

// //       //       IconButton(
// //       //         icon: Icon(Icons.description),
// //       //         onPressed: (){},
// //       //       ),

// //       //     ],),
// //       //   ),
// //       // ),
// //     );
// //   }
// // }



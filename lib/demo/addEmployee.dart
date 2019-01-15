/**This should be placed under pages/manager_view/employees 
 * This page is not used for a reson
*/


// import 'package:flutter/material.dart';

// class AddEmployee extends StatefulWidget {
//   @override
//   _AddEmployeeState createState() => _AddEmployeeState();
// }

// class _AddEmployeeState extends State<AddEmployee> {
//   final _addEmployeeKey = GlobalKey<FormState>();

// //----------------------------Designation -----------------------------------------------------

//   var _designation = [
//     'Architects',
//     'Construction Managers',
//     'Engineer',
//     'Planners',
//     'Subcontractors',
//     'Supervisor',
//     'Surveyors',
//     'Other'
//   ];
//   var _currentItem = 'Architects';
// //------------------------Gender Select----------------------------------------------------------
//   var _isMale = true;

//   Widget _buildGenderSelect({String gender, bool selected}) {
//     var button = selected
//         ? buildContainerGenderSelect(
//             gender: gender,
//             textColor: Colors.black54,
//             background: Colors.white)
//         : buildContainerGenderSelect(
//             gender: gender,
//             textColor: Colors.black54,
//             background: Colors.deepPurple);

//     return GestureDetector(
//       child: button,
//       onTap: () {
//         setState(() {
//           _isMale = !_isMale;
//         });
//       },
//     );
//   }

// //---------------------------------------------------------------------------------
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple,
//       body: Card(
//         key: _addEmployeeKey,
//         margin:
//             EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0, bottom: 10.0),
//         elevation: 0.0,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         child: Container(
//           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
//           margin: EdgeInsets.all(10.0),
//           child: ListView(
//             children: <Widget>[
//               Card(
//                 child: AppBar(
//                   backgroundColor: Colors.deepPurple,
//                   title: Text('Add Employee'),
//                   leading: IconButton(
//                     icon: Icon(Icons.arrow_back),
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                     },
//                   ),
//                   actions: <Widget>[
//                     IconButton(
//                       icon: Icon(Icons.done),
//                       onPressed: () {
//                         Navigator.of(context).pushNamed('/existingEmployee');
//                       },
//                     )
//                   ],
//                 ),
//               ),
//               Card(
//                   color: Colors.deepPurple,
//                   child: Column(
//                     children: <Widget>[
//                       Container(
//                         padding: EdgeInsets.only(top: 15.0),
//                         child: Center(
//                           child: CircleAvatar(
//                             radius: 70.0,
//                             backgroundImage: AssetImage('assets/room.jpg'),
//                           ),
//                         ),
//                       ),
//                       IconButton(
//                         color: Colors.white,
//                         splashColor: Colors.white,
//                         icon: Icon(Icons.add_a_photo),
//                         onPressed: () {},
//                       )
//                     ],
//                   )),
//               SizedBox(
//                 height: 30.0,
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 20.0),
//                   child: Text(
//                     'Select Designation',
//                     style: TextStyle(color: Colors.black54),
//                   ),
//                 ),
//               ),
//               DropdownButton<String>(
//                 isExpanded: true,
//                 elevation: 0,
//                 items: _designation.map((String dropDowntringItem) {
//                   return DropdownMenuItem<String>(
//                     value: dropDowntringItem,
//                     child: Text(dropDowntringItem),
//                   );
//                 }).toList(),
//                 onChanged: (String newValueSelected) {
//                   setState(() {
//                     this._currentItem = newValueSelected;
//                   });
//                 },
//                 value: _currentItem,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                     hintText: "eg: Store Keeper", labelText: "Sub-Designation"),
//                 keyboardType: TextInputType.text,
//               ),
//               TextFormField(
//                 decoration:
//                     InputDecoration(hintText: "eg: Ajay", labelText: "Name"),
//                 keyboardType: TextInputType.text,
//               ),
//               SizedBox(
//                 height: 10.0,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Container(
//                     child: Center(
//                         child: Text(
//                       'Sex',
//                       style: TextStyle(color: Colors.black54,fontSize: 18.0),
//                     )),
//                   ),
//                   Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         _buildGenderSelect(gender: "M", selected: _isMale),
//                         SizedBox(
//                           width: 20.0,
//                         ),
//                         _buildGenderSelect(gender: "F", selected: !_isMale),
//                       ])
//                 ],
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                     hintText: "eg: 14-12-1998", labelText: "DOB"),
//                 keyboardType: TextInputType.number,
//                 // maxLength: ,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                     hintText: "eg: ajay@gmail.com", labelText: "Email"),
//                 keyboardType: TextInputType.text,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                     hintText: "eg: XXX-XXX-XXXX", labelText: "Phno"),
//                 keyboardType: TextInputType.number,
//                 maxLength: 10,
//               ),
//               SizedBox(
//                 height: 10.0,
//               ),
//               infoContainer(),
//               Container(
//                 padding: EdgeInsets.symmetric(vertical: 20.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     // IconButton(
//                     //     color: Colors.deepPurple,
//                     //     icon: Icon(Icons.info),
//                     //     onPressed: () {}),
//                     FloatingActionButton(
//                         onPressed: () {},
//                         elevation: 0.0,
//                         backgroundColor: Colors.deepPurple,
//                         child: Icon(Icons.done)),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Container buildContainerGenderSelect(
//       {String gender, Color background, Color textColor = Colors.black}) {
//     return Container(
//       height: 50,
//       width: 50,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(75.0), color: background),
//       child: Center(
//           child: Text(
//         gender,
//         style: TextStyle(
//             color: textColor,
//             textBaseline: TextBaseline.alphabetic,
//             fontSize: 25.0),
//       )),
//     );
//   }

//   Container infoContainer() {
//     return Container(
//       padding: EdgeInsets.all(10.0),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10.0), color: Colors.grey),
//       child: Text(
//         'After filling credentials tap on done button then login credentials will be sent to the employee',
//         style: TextStyle(color: Colors.white),
//       ),
//     );
//   }
// }
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddEmployee extends StatefulWidget {
  @override
  _AddEmployeeState createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  final _addProjectKey = GlobalKey<FormState>();

  String _projectTitle,
      _projectDescription,
      _clientName,
      _projectArea,
      _projectCity,
      _phone,
      _pincode;

//--------------------AppBar---------------------------------------------------------------------------

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      title: Text(
        'Add Employee',
        style: TextStyle(letterSpacing: 2.0),
      ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.done),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }

//-------------------------------------------------------------------------------------------
//----------------------------Image Picker---------------------------------------------------
  File _imageFile;

  void _getImage(BuildContext context, ImageSource source) {
    ImagePicker.pickImage(
      source: source,
      maxWidth: 500.0,
    ).then((File image) {
      setState(() {
        _imageFile = image;
      });
      Navigator.pop(context);
    });
  }

  void _openImagePicker(BuildContext context) {
    final iconColor = Theme.of(context).primaryColor;
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200.0,
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Pick an Image', style: TextStyle(fontSize: 30.0)),
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlatButton(
                        onPressed: () {
                          _getImage(context, ImageSource.camera);
                        },
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.camera,
                              color: iconColor,
                              size: 30.0,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text('Camera', style: TextStyle(fontSize: 22.0))
                          ],
                        )),
                    SizedBox(
                      width: 10.0,
                    ),
                    FlatButton(
                        onPressed: () {
                          _getImage(context, ImageSource.gallery);
                        },
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.photo_library,
                              color: iconColor,
                              size: 30.0,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Gallery',
                              style: TextStyle(fontSize: 22.0),
                            )
                          ],
                        )),
                  ],
                )
              ],
            ),
          );
        });
  }

//-----------------------------------------------------------------------------------------------
//------------------------Gender Select----------------------------------------------------------
  var _isMale = true;

  Widget _buildGenderSelect({String gender, bool selected}) {
    var button = selected
        ? buildContainerGenderSelect(
            gender: gender, textColor: Colors.black54, background: Colors.white)
        : buildContainerGenderSelect(
            gender: gender,
            textColor: Colors.black54,
            background: Colors.deepPurple);

    return GestureDetector(
      child: button,
      onTap: () {
        setState(() {
          _isMale = !_isMale;
        });
      },
    );
  }

  Container buildContainerGenderSelect(
      {String gender, Color background, Color textColor = Colors.black}) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(75.0), color: background),
      child: Center(
          child: Text(
        gender,
        style: TextStyle(
            color: textColor,
            textBaseline: TextBaseline.alphabetic,
            fontSize: 25.0),
      )),
    );
  }

  Row buildSexSelect() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Center(
              child: Text(
            'Sex',
            style: TextStyle(color: Colors.black54, fontSize: 18.0),
          )),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _buildGenderSelect(gender: "M", selected: _isMale),
              SizedBox(
                width: 20.0,
              ),
              _buildGenderSelect(gender: "F", selected: !_isMale),
            ])
      ],
    );
  }

//---------------------------------------------------------------------------------

//----------------------------Designation -----------------------------------------------------
  var _currentItem = 'Architects';
  var _designation = [
    'Architects',
    'Construction Managers',
    'Engineer',
    'Planners',
    'Subcontractors',
    'Supervisor',
    'Surveyors',
    'Other'
  ];

  DropdownButton<String> buildDropdownButton() {
    return DropdownButton<String>(
      isExpanded: true,
      elevation: 0,
      items: _designation.map((String dropDowntringItem) {
        return DropdownMenuItem<String>(
          value: dropDowntringItem,
          child: Text(dropDowntringItem),
        );
      }).toList(),
      onChanged: (String newValueSelected) {
        setState(() {
          this._currentItem = newValueSelected;
        });
      },
      value: _currentItem,
    );
  }
//----------------------------------------------------------------------------------
//----------------------------Info------------------------------------------------------

  Container infoContainer() {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.grey),
      child: Text(
        'After filling credentials tap on done button then login credentials will be sent to the employee',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
//----------------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 275,
                  width: double.infinity,
                  color: Colors.deepPurple,
                ),
                Positioned(
                  width: MediaQuery.of(context).size.width,
                  top: 5.0,
                  // top: MediaQuery.of(context).size.height / 5,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
                        // padding: EdgeInsets.symmetric(horizontal: 8.0),
                        width: 500,
                        height: 200,
                        child: Column(
                          children: <Widget>[
                            _imageFile == null
                                ? Container(
                                    padding: EdgeInsets.only(top: 100.0),
                                    child: Text(
                                      'Pick an Image',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22.0,
                                        letterSpacing: 2.0,
                                      ),
                                    ))
                                : Container(
                                    child: Image.file(
                                      _imageFile,
                                      fit: BoxFit.fitWidth,
                                      height: 200.0,
                                      width: MediaQuery.of(context).size.width,
                                      alignment: Alignment.center,
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.0)),
                                  )
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.blueGrey.withOpacity(1.0),
                                    BlendMode.softLight),
                                image: AssetImage(
                                  'assets/emp.png',
                                ),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      FlatButton(
                        onPressed: () {
                          _openImagePicker(context);
                        },
                        child: Icon(
                          Icons.add_a_photo,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            child: Form(
              key: _addProjectKey,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30.0,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          'Select Designation',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                    ),
                  ),
                  buildDropdownButton(),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "eg: Store Keeper",
                        labelText: "Sub-Designation"),
                    keyboardType: TextInputType.text,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "eg: Ajay", labelText: "Name"),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  buildSexSelect(),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "eg: 14-12-1998", labelText: "DOB"),
                    keyboardType: TextInputType.number,
                    // maxLength: ,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "eg: ajay@gmail.com", labelText: "Email"),
                    keyboardType: TextInputType.text,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "eg: XXX-XXX-XXXX", labelText: "Phno"),
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  infoContainer(),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

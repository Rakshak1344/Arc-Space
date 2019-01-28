import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddProject extends StatefulWidget {
  @override
  _AddProjectState createState() => _AddProjectState();
}

class _AddProjectState extends State<AddProject> {
  final _addProjectKey = GlobalKey<FormState>();
  int grpValue;
  String _projectTitle,
      _projectDescription,
      _clientName,
      _clientPhone,
       _sitePhone,
       _siteSecurityPhno,
      _projectArea,
      _projectCity,
      
     
      _pincode;

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
//---------------------------------------------------------------------------------

  void gender(int g) {
    setState(() {
      if (g == 1) {
        grpValue = 1;
      } else if (g == 2) {
        grpValue = 2;
      }
    });
  }

  Row buildSelectGender() {
    return Row(
      children: <Widget>[
        // Text(
        //   'Gender',
        //   style: TextStyle(
        //       fontSize: 15,
        //       color: Colors.blueGrey,
        //       fontWeight: FontWeight.normal),
        // ),
        Container(
          child: Expanded(
            flex: 1,
            child: Container(
              // margin: EdgeInsets.only(left: 1.0),
              child: RadioListTile(
                activeColor: Colors.deepPurple,
                title: Text(
                  'Male',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                groupValue: grpValue,
                value: 1,
                onChanged: (int g) => gender(g),
              ),
            ),
          ),
        ),
        Container(
          child: Expanded(
            child: Container(
              // margin: EdgeInsets.only(left: 1.0),
              child: RadioListTile(
                activeColor: Colors.deepPurple,
                title: Text('Female',
                    style: TextStyle(color: Colors.grey.shade600)),
                groupValue: grpValue,
                value: 2,
                onChanged: (int g) => gender(g),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Add Project',
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
      ),
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
                                  'assets/room.jpg',
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
                  TextFormField(
                    onSaved: (projectTitle) => _projectTitle = projectTitle,
                    validator: (projectTitle) {
                      if (projectTitle.isEmpty) {
                        return "Title required";
                      } else if (projectTitle.length > 20) {
                        return "Title must be 20+ char";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Title', hintText: 'eg: Gong'),
                  ),
                  TextFormField(
                    onSaved: (projectDescription) =>
                        _projectDescription = projectDescription,
                    validator: (projectDescription) {
                      if (projectDescription.isEmpty) {
                        return "Description required";
                      } else if (projectDescription.length < 10) {
                        return "must be 10+ char";
                      }
                    },
                    maxLines: 5,
                    decoration: InputDecoration(
                      labelText: 'Description',
                    ),
                  ),
                  TextFormField(
                    onSaved: (clientName) => _clientName = clientName,
                    validator: (clientName) {
                      if (clientName.isEmpty) {
                        return "Description required";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Client Name', hintText: 'eg: John'),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Center(
                            child: Text(
                          'Sex',
                          style:
                              TextStyle(color: Colors.black54, fontSize: 18.0),
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
                  ),
                  // buildSelectGender(),
                  TextFormField(
                    onSaved: (phone) => _clientPhone = phone,
                    validator: (phone) {
                      if (phone.isEmpty) {
                        return "Phno required";
                      } else if (phone.length < 10) {
                        return "Phno cannot be less than 10";
                      }
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    decoration: InputDecoration(
                        labelText: 'Client Phone', hintText: 'eg: XXX-XXX-XXXX'),
                  ),
                   TextFormField(
                    onSaved: (siteSecurity) => _siteSecurityPhno = siteSecurity,
                    validator: (siteSecurity) {
                      if (siteSecurity.isEmpty) {
                        return "Phno required";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Site Security Name', hintText: 'eg: John'),
                  ),
                  TextFormField(
                    onSaved: (phone) => _sitePhone = phone,
                    validator: (phone) {
                      if (phone.isEmpty) {
                        return "Phno required";
                      } else if (phone.length < 10) {
                        return "Phno cannot be less than 10";
                      }
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    decoration: InputDecoration(
                        labelText: 'Site Phone', hintText: 'eg: XXX-XXX-XXXX'),
                  ),
                  TextFormField(
                    onSaved: (area) => _projectArea = area,
                    validator: (area) {
                      if (area.isEmpty) {
                        return "Area required";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Area', hintText: 'eg: Time Street'),
                  ),
                  TextFormField(
                    onSaved: (city) => _projectCity = city,
                    validator: (city) {
                      if (city.isEmpty) {
                        return "city required";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'City', hintText: 'eg: Bangalore'),
                  ),
                  TextFormField(
                    onSaved: (pincode) => _pincode = pincode,
                    validator: (pincode) {
                      if (pincode.isEmpty) {
                        return "pincode required";
                      } else if (pincode.length < 6) {
                        return "must be 6 char";
                      }
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    decoration: InputDecoration(
                        labelText: 'pincode', hintText: 'eg: XXX-XXX'),
                  ),
                  SizedBox(
                    height: 10.0,
                  )
                  // Container(
                  //   margin: EdgeInsets.symmetric(vertical: 10.0),
                  //   width: double.infinity,
                  //   child: RaisedButton(
                  //       elevation: 0.0,
                  //       color: Colors.deepPurple,
                  //       onPressed: () {
                  //         if(_addProjectKey.currentState.validate()){
                  //           _addProjectKey.currentState.save();
                  //           Navigator.of(context).pop();
                  //         }

                  //       },
                  //       child: Text(
                  //         'Add Project',
                  //         style: TextStyle(color: Colors.white),
                  //       )),
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// class GetClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = new Path();
//     path.lineTo(0.0, 300.0);
//     path.lineTo(size.width + 100, 0.0);
//     // path.lineTo(0.0, size.height / 4.0);
//     // path.lineTo(size.width + 125, 0.0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     // TODO: implement shouldReclip
//     return null;
//   }
// }

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileManager extends StatefulWidget {
  @override
  _EditProfileManagerState createState() => _EditProfileManagerState();
}

class _EditProfileManagerState extends State<EditProfileManager> {
  final _updatedManagerProfileKey = GlobalKey<FormState>();
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

//----------------------------------------------------------------------------------

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepPurple,
      appBar: buildAppBar(),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.deepPurple,
            height: MediaQuery.of(context).size.height / 3,
            width: double.infinity,
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                buildProfileImage(),
                buildPositionedCamaraButton()
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Form(
              key: _updatedManagerProfileKey,
              child: Container(
                margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'eg: Tom', labelText: 'First Name'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'eg: Cruise', labelText: 'Last Name'),
                    ),
                    SizedBox(height: 10.0,),
                    buildSexSelect(),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'eg: 14-12-1998', labelText: 'DOB'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'eg: Assistant Manager', labelText: 'Designation'),
                    ),
                    TextFormField(
                      // onSaved: (emailInput) => _email = emailInput,
                      // validator: (emailInput) {
                      //   if (emailInput.isEmpty) {
                      //     return 'Invalid Email';
                      //   }
                      // },
                      decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'xyz@mail.com',
                         ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      // onSaved: (phoneNo) => _phno = phoneNo,
                      // validator: (phoneNo) {
                      //   if (phoneNo.isEmpty) {
                      //     return 'Phone number required*';
                      //   } else if (phoneNo.length < 10) {
                      //     return 'Phone number must have 10 char*';
                      //   }
                      // },
                      maxLength: 10,
                      decoration: InputDecoration(
                        hintText: '10-digits only',
                        labelText: 'Phno',
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  InkWell buildProfileImage() {
    return InkWell(
      borderRadius: BorderRadius.circular(85),
      onTap: () {},
      child: CircleAvatar(
        radius: 85,
        backgroundImage: (_imageFile==null)?AssetImage('assets/tom.jpg'):FileImage(_imageFile),
      ),
    );
  }

  Positioned buildPositionedCamaraButton() {
    return Positioned(
      child: Container(
        margin: EdgeInsets.only(right: 10.0),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
            onPressed: () {
              _openImagePicker(context);
            },
            icon: Icon(
              Icons.camera_alt,
              color: Colors.deepPurple,
            ),
            splashColor: Colors.deepOrange,
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.0,
      title: Text('Update Profile'),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.done,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

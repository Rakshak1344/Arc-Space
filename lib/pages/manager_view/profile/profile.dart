import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Profile'),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: _imageFile == null
                    ? AssetImage('assets/tom.jpg')
                    : FileImage(_imageFile),
                fit: BoxFit.cover)),
        child: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 1.4,
            ),
            Card(
              color: Colors.grey.withOpacity(0.1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: cameraAndEdit(context),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    box(),
                    line(color: Colors.deepPurple, lineHeight: 5.0),
                    // nameDesignation(),
                    infoRow(
                        infoIcon: Icon(Icons.person),
                        infoText: 'Name',
                        detail: 'Tom Cruise',
                        textColor: Colors.black),
                    Divider(),
                    infoRow(
                        infoIcon: Icon(Icons.location_on),
                        infoText: 'Address',
                        detail: '#9/1 1st main Circle street Bangalore 560-096',
                        textColor: Colors.black),
                    Divider(),
                    infoRow(
                        infoIcon: Icon(Icons.gesture),
                        infoText: 'Age',
                        detail: '25',
                        textColor: Colors.black),
                    Divider(),
                    infoRow(
                        infoIcon: Icon(Icons.phone),
                        infoText: 'Phone',
                        detail: '+91 9148046273',
                        textColor: Colors.black),
                    line(color: Colors.deepPurple, lineHeight: 5.0),
                    box(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row infoRow(
      {String infoText, Icon infoIcon, String detail, Color textColor}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width / 2,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: infoIcon,
                onPressed: () {},
              ),
              SizedBox(
                width: 1.0,
              ),
              Text(
                infoText,
                style: TextStyle(color: textColor),
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 3,
          child: Text(
            detail,
            style: TextStyle(color: textColor),
          ),
        )
      ],
    );
  }

  SizedBox box() => SizedBox(
        height: 10.0,
      );
  Container line({Color color, double lineHeight}) {
    return Container(
      height: lineHeight,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: color),
    );
  }

  Container cameraAndEdit(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
              backgroundColor: Colors.deepPurple,
              radius: 20.0,
              child: IconButton(
                onPressed: () {
                  _openImagePicker(context);
                },
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
                // size: 50.0,
              )),
          CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20.0,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/editManagerProfile');
                },
                icon: Icon(
                  Icons.edit,
                  color: Colors.deepPurple,
                ),
                // size: 50.0,
              )),
        ],
      ),
    );
  }

  Container nameDesignation() {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.deepPurple,
        child: FlatButton(
          onPressed: () {},
          color: Colors.deepPurple,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Tom',
                    style: TextStyle(color: Colors.white, fontSize: 32.0),
                  ),
                  Text(
                    'Assistent Manager',
                    style: TextStyle(color: Colors.white70, fontSize: 22.0),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class _ProfileState extends State<Profile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.deepPurple,
//       appBar: buildAppBar(),
//       body: ListView(
//         children: <Widget>[
//           Container(
//               color: Colors.deepPurple,
//               height: MediaQuery.of(context).size.height / 2.5,
//               width: double.infinity,
//               padding: EdgeInsets.symmetric(vertical: 10.0),
//               alignment: Alignment.center,
//               child: Column(
//                 children: <Widget>[
//                   buildProfileImage(),
//                   SizedBox(height: 10.0,),
//                   Text(
//                     'Tom Cruise',
//                     style: TextStyle(
//                         letterSpacing: 1.0,
//                         fontSize: 22.0,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.white),
//                   ),

//                   Text(
//                     'Assistant Manager',
//                     style: TextStyle(
//                         letterSpacing: 1.0,
//                         fontSize: 18.0,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.white70),
//                   )
//                 ],
//               )),
//         ],
//       ),
//     );
//   }

//   InkWell buildProfileImage() {
//     return InkWell(
//       borderRadius: BorderRadius.circular(85),
//       onTap: () {},
//       child: CircleAvatar(
//         radius: 85,
//         backgroundImage: AssetImage('assets/tom.jpg'),
//       ),
//     );
//   }

//   AppBar buildAppBar() {
//     return AppBar(
//       elevation: 0.0,
//       title: Text('My Profile'),
//       centerTitle: true,
//       actions: <Widget>[
//         IconButton(
//           onPressed: () {
//             Navigator.of(context).pushNamed('/editManagerProfile');
//           },
//           icon: Icon(
//             Icons.edit,
//             color: Colors.white,
//           ),
//         )
//       ],
//     );
//   }
// }

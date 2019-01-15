import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  Column buildColumnProjects() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.edit, size: 50, color: Colors.white),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Projects',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        )
      ],
    );
  }

  Column buildColumnManageEmployee() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.person, size: 50, color: Colors.white),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Employees',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ],
    );
  }

  Column buildColumnSketchPad() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.color_lens, size: 50, color: Colors.white),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Sketch Pad',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ],
    );
  }

  Column buildColumnTeal() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.track_changes, size: 50, color: Colors.white),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Track',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
      ],
    );
  }

  Column buildColumnOrange() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.update, size: 50, color: Colors.white),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Overview',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white),
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Status',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      Container(
                        child: Row(
                          children: <Widget>[
                            FlatButton.icon(
                              icon: Icon(Icons.play_arrow),
                              label: Text('Watch all'),
                              splashColor: Colors.grey,
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed('/watchAllStatus');
                              },
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 1.5,
                    color: Colors.black,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 10.0),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 35,
                                  backgroundImage: AssetImage('assets/tom.jpg'),
                                ),
                                Positioned(
                                  child: CircleAvatar(
                                    radius: 10.0,
                                    backgroundImage:
                                        AssetImage('assets/add.jpg'),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text('You'),
                          ],
                        ),
                        // statusAvatar(img: 'assets/add.jpg', name: 'You'),
                        SizedBox(
                          width: 10.0,
                        ),
                        statusAvatar(img: 'assets/room.jpg', name: 'Jhon'),
                        SizedBox(
                          width: 10.0,
                        ),
                        statusAvatar(img: 'assets/project1.jpg', name: 'Mike'),
                        SizedBox(
                          width: 10.0,
                        ),
                        statusAvatar(img: 'assets/project2.jpg', name: 'Sam'),
                      ],
                    ),
                  )
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Row(children: <Widget>[
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    'Manage & Explore',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        letterSpacing: 1.0),
                    textAlign: TextAlign.left,
                  ),
                ]),
                // SizedBox(height: 50.0,),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/manageProjects');
                          },
                          child: Container(
                            height: 300.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.blue),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[buildColumnProjects()],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 500.0,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed('/employee');
                                  },
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        buildColumnManageEmployee(),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(5.0)),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed('/sketchPad');
                                  },
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        buildColumnSketchPad()
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(5.0)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 650.0,
                        child: Column(
                          children: <Widget>[
                            //---------------------------------------------------
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 5.0, bottom: 5.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed('/overView');
                                  },
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[buildColumnOrange()],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius:
                                            BorderRadius.circular(5.0)),
                                  ),
                                ),
                              ),
                            ),
                            //---------------------------------------------------
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 5.0, top: 5.0),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[buildColumnTeal()],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.teal,
                                        borderRadius:
                                            BorderRadius.circular(5.0)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Column statusAvatar({String img, String name}) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 35.0,
          backgroundImage: AssetImage(img),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(name),
      ],
    );
  }
}

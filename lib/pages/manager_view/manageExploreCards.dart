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
          child: Icon(Icons.person, size: 50, color: Colors.white),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Teal',
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
          child: Icon(Icons.person, size: 50, color: Colors.white),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Orange',
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
                    style: TextStyle(fontSize: 20.0,color: Colors.white),
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
                                  onTap: () {},
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
                                  onTap: () {},
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
}

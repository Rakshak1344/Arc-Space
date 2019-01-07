import 'package:flutter/material.dart';
import './addProject.dart';

class TwoPanels extends StatefulWidget {
  final AnimationController controller;

  TwoPanels({this.controller});
  @override
  _TwoPanelsState createState() => _TwoPanelsState();
}

class _TwoPanelsState extends State<TwoPanels> {
  static const header_height = 32.0;

  Animation<RelativeRect> getPanelAnimation(BoxConstraints constraints) {
    final height = constraints.biggest.height;
    final backPanelHeight = height - header_height;
    final frontPanelHeight = -header_height;

    return RelativeRectTween(
            begin: RelativeRect.fromLTRB(
                0.0, backPanelHeight, 0.0, frontPanelHeight),
            end: RelativeRect.fromLTRB(0.0, 0.0, 0.0, 0.0))
        .animate(
            CurvedAnimation(parent: widget.controller, curve: Curves.linear));
  }

  Widget bothPanels(BuildContext context, BoxConstraints constraints) {
    final ThemeData theme = Theme.of(context);
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(bottom: 20.0),
              color: theme.primaryColor,
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
              ])),
          positionedTransitionManagerSpace(constraints, context)
        ],
      ),
    );
  }

  PositionedTransition positionedTransitionManagerSpace(
      BoxConstraints constraints, BuildContext context) {
    return PositionedTransition(
      rect: getPanelAnimation(constraints),
      child: Material(
        elevation: 12.0,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
        child: Column(
          children: <Widget>[
            Container(
              height: header_height,
              child: Center(
                child: Text(
                  "Manager space ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.deepPurple),
                  // style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
            buildUserAccountsDrawerHeader(),
            Expanded(
                // child: Center(
                //   child: Text('Front Panel',style: TextStyle(fontSize: 24.0, color: Colors.black),),
                // ),
                child: ListView(
              children: <Widget>[
                ListTile(
                    title: Text(
                      'Add Project',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.deepPurple),
                    ),
                    trailing: Icon(Icons.add, color: Colors.deepPurple),
                    onTap: () {
                      Navigator.of(context).pushNamed('/addProject');
                    }),
                Divider(
                  height: 10.0,
                  color: Colors.deepPurple,
                ),
                ListTile(
                  title: Text(
                    'Edit Project',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.black),
                  ),
                  trailing: Icon(Icons.edit, color: Colors.deepPurple),
                ),
                Divider(
                  height: 10.0,
                  color: Colors.deepPurple,
                ),
                ListTile(
                  title: Text(
                    'Cancel Project',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.black),
                  ),
                  trailing: Icon(Icons.cancel, color: Colors.deepPurple),
                ),
                Divider(
                  height: 10.0,
                  color: Colors.deepPurple,
                ),
                ListTile(
                  title: Text(
                    'Attendance',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.black),
                  ),
                  trailing: Icon(Icons.note, color: Colors.deepPurple),
                ),
                Divider(
                  height: 10.0,
                  color: Colors.deepPurple,
                ),
                ListTile(
                  title: Text(
                    'Sketch Pad',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.black),
                  ),
                  trailing: Icon(Icons.color_lens, color: Colors.deepPurple),
                  onTap: () => Navigator.of(context).pushNamed('/sketchPad'),
                ),
                Divider(
                  height: 10.0,
                  color: Colors.deepPurple,
                ),
                ListTile(
                  title: Text(
                    'Settings',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.black),
                  ),
                  trailing: Icon(
                    Icons.settings,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }

  UserAccountsDrawerHeader buildUserAccountsDrawerHeader() {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
          image: DecorationImage(
              // image: AssetImage('assets/desk.jpg'),
              image: AssetImage('assets/desk1.jpg'),
              fit: BoxFit.cover)),
      accountName: Text('Rakshith'),
      accountEmail: Text("rakshithgajendra@gmail.com"),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: Text('R'),
      ),
      otherAccountsPictures: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Text('G'),
        )
      ],
    );
  }

  

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: bothPanels,
    );
  }
}

class CardProject extends StatelessWidget {
  final String projectTitle;
  final String projectAddress;
  final String projectImage;

  CardProject({this.projectTitle, this.projectAddress, this.projectImage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Image.asset(
              projectImage,
              width: double.infinity,
              height: 150.0,
              fit: BoxFit.cover,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          projectTitle,
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.deepPurple,
                              letterSpacing: 1.0),
                        ),
                      ),
                      Text(
                        projectAddress,
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                            letterSpacing: 1.0),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 2.5,
                      height: 60.0,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            Colors.white,
                            Colors.white,
                            Colors.deepPurple
                          ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                    )),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Icon(
                      Icons.info,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



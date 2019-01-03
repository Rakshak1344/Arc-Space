import 'package:flutter/material.dart';

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
            color: theme.primaryColor,
            child: Center(
              child: Text(
                "No Project Available",
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
            ),
          ),
          PositionedTransition(
            rect: getPanelAnimation(constraints),
            child: Material(
              elevation: 12.0,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0)),
              child: Column(
                children: <Widget>[
                  
                  Container(
                    height: header_height,
                    child: Center(
                      child: Text(
                        "Manager space ",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple),
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
                        title: Text('Add Project',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.deepPurple),),
                        trailing: Icon(Icons.add, color: Colors.deepPurple),
                        onTap: () =>
                            Navigator.of(context).pushNamed('/manageProjects'),
                      ),
                      Divider(height: 10.0,color: Colors.deepPurple,),
                      ListTile(
                        title: Text('Edit Project',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                        trailing: Icon(Icons.edit, color: Colors.deepPurple),
                      ),
                      Divider(height: 10.0,color: Colors.deepPurple,),
                       ListTile(
                        title: Text('Cancel Project',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                        trailing: Icon(Icons.cancel, color: Colors.deepPurple),
                      ),
                      Divider(height: 10.0,color: Colors.deepPurple,),
                      ListTile(
                        title: Text('Attendance',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                        trailing: Icon(Icons.note, color: Colors.deepPurple),
                      ),
                      Divider(height: 10.0,color: Colors.deepPurple,),
                      ListTile(
                        title: Text('Sketch Pad',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                        trailing:
                            Icon(Icons.color_lens, color: Colors.deepPurple),
                        onTap: () =>
                            Navigator.of(context).pushNamed('/sketchPad'),
                      ),
                      Divider(height: 10.0,color: Colors.deepPurple,),
                      ListTile(
                        title: Text('Settings',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
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
          )
        ],
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

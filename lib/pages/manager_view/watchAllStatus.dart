import 'package:flutter/material.dart';
import 'package:login/pages/manager_view/searchBar.dart';

class WatchAllStatus extends StatefulWidget {
  @override
  _WatchAllStatusState createState() => _WatchAllStatusState();
}

class _WatchAllStatusState extends State<WatchAllStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.deepPurple,
          child: Icon(Icons.camera),
        ),
      ),
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Status'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // showSearch(context: context,delegate: DataSearch());
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 8.0),
        child: Card(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: ListTile(
                  leading: Stack(
                    alignment: Alignment.bottomRight,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/tom.jpg'),
                      ),
                      Positioned(
                        child: CircleAvatar(
                          radius: 10.0,
                          backgroundImage: AssetImage('assets/add.jpg'),
                        ),
                      )
                    ],
                  ),
                  title: Text('My Status'),
                  subtitle: Text('Tap to add status update'),
                  onTap: () {},
                ),
              ),
              buildMostRecentBox(title: 'Most Recent'),
              SizedBox(
                height: 10.0,
              ),
              buildListTileViewedUpdates(
                  imageAsset: 'assets/room.jpg',
                  name: 'Jhon',
                  designation: 'Project Manager'),
              SizedBox(
                height: 10.0,
              ),
              buildMostRecentBox(title: 'Viewed Updates'),
              SizedBox(
                height: 10.0,
              ),
              buildListTileViewedUpdates(
                  imageAsset: 'assets/project1.jpg',
                  name: 'Mike',
                  designation: 'Project Head'),
              Divider(),
              buildListTileViewedUpdates(
                  imageAsset: 'assets/project2.jpg',
                  name: 'Sam',
                  designation: 'Store Manager'),
              Divider(),
              buildListTileViewedUpdates(
                  imageAsset: 'assets/desk.jpg',
                  name: 'Ram',
                  designation: 'Store Keeper'),
              Divider(),
              buildListTileViewedUpdates(
                  imageAsset: 'assets/desk1.jpg',
                  name: 'Pawan',
                  designation: 'Planner'),
              Divider(),
              
            
              SizedBox(height: 10.0,),
            ],
          ),
        ),
      ),
    );
  }

  ListTile buildListTileViewedUpdates(
      {String imageAsset, String name, String designation}) {
    return ListTile(
      leading: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(imageAsset),
      ),
      title: Text(name),
      subtitle: Text(designation),
    );
  }

  Container buildMostRecentBox({String title}) {
    return Container(
      padding: EdgeInsets.all(1.0),
      decoration: BoxDecoration(color: Colors.grey),
      width: double.infinity,
      child: Center(
          child: Text(
        title,
        softWrap: true,
        style: TextStyle(color: Colors.white, fontSize: 18.0),
      )),
    );
  }
}



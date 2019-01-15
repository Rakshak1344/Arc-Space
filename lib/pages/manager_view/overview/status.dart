import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        'Status',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      Row(
        children: <Widget>[
          Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
          Text(
            'Watch all',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      )
    ],
  );

  final statusCircle = Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                Container(
                  width: 60.0,
                  height: 60.0,
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  child: CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage('assets/tom.jpg'),
                  ),
                ),
                index == 0
                    ? Positioned(
                        right: 10.0,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 10.0,
                          child: Icon(
                            Icons.add,
                            size: 14.0,
                            color: Colors.deepPurple,
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[topText, statusCircle],
      ),
    );
  }
}

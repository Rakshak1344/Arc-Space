import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class IndividualProfile extends StatefulWidget {
  @override
  _IndividualProfileState createState() => _IndividualProfileState();
}

class _IndividualProfileState extends State<IndividualProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurpleAccent,
        onPressed: () {},
        elevation: 10.0,
        highlightElevation: 10.0,
        child: Icon(Icons.call, color: Colors.white),
      ),
      backgroundColor: Colors.deepPurple,
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          buildProfileImage(context),
          buildNameAgeSex(context),
          Container(
              // height: MediaQuery.of(context).size.height / 1,
              // margin: EdgeInsets.all(10.0),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10.0),
              //   image: DecorationImage(
              //     image: AssetImage('assets/room.jpg'),
              //     colorFilter: ColorFilter.mode(Colors.deepPurpleAccent, BlendMode.dst),
              //     fit: BoxFit.cover,

              //   )
              // ),
              child: Column(
                children: <Widget>[
                  designation(context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[portfolio(context), address(context)],
                  ),
                ],
              )),
              SizedBox(
                height: 30.0,
              )
        ],
      ),
    );
  }

  Expanded address(BuildContext context) {
    return Expanded(
      child: Container(
        height: 230,
        width: MediaQuery.of(context).size.width / 2.2,
        margin: EdgeInsets.only(right: 10.0, left: 3, top: 50),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
        child: FlipCard(
            direction: FlipDirection.HORIZONTAL,
            front: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.teal),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Address',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 30.0),
                    ),
                  ),
                )),
            back: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.brown[600]),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 40.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0)),
                        color: Colors.teal,
                      ),
                      child: Center(
                        child: Text(
                          'Address',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            '#14 4th Avenue Circle Street Mars-local',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Landmark',
                            style: TextStyle(
                                color: Colors.teal,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Space Square',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Pincode',
                            style: TextStyle(
                                color: Colors.teal,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'XXX-XXX',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.navigation,
                            color: Colors.teal,
                          )),
                    ),
                  ],
                ))),
      ),
    );
  }

  Expanded portfolio(BuildContext context) {
    return Expanded(
      child: Container(
        height: 210,
        width: MediaQuery.of(context).size.width / 2.2,
        margin: EdgeInsets.only(left: 10.0, right: 3),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
        child: FlipCard(
          direction: FlipDirection.VERTICAL,
          front: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), color: Colors.red),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Portfolio',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 30.0),
                  ),
                ),
              )),
          back: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0)),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      'Portfolio',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Cericulam',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Civil Engineer',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Designated as',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Stock Manager',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Experience',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5.0,
                ),
                CircleAvatar(
                  
                  backgroundColor: Colors.white70,
                  child: Text(
                    '15-Y',
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container designation(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 10,
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.brown[900]),
      child: Center(
        child: Text(
          'Junior Site Manager',
          style: TextStyle(
              color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Container buildNameAgeSex(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      height: MediaQuery.of(context).size.height / 9,
      decoration: decor(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Tom Cruise',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepPurpleAccent),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                width: 5.0,
                height: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.white70, Colors.deepPurple],
                        end: Alignment.bottomCenter,
                        begin: Alignment.topCenter)),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.deepPurple),
                    borderRadius: BorderRadius.circular(25.0)),
                child: Text(
                  '45',
                  style:
                      TextStyle(fontSize: 22.0, color: Colors.deepPurpleAccent),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.deepPurpleAccent,
                  radius: 20,
                  child: Text(
                    'M',
                    style: TextStyle(fontSize: 22.0, color: Colors.white),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Stack buildProfileImage(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 2.5,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/tom.jpg'), fit: BoxFit.cover)),
          // child: Image.asset('assets/tom.jpg'),
        ),
        Positioned(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 35,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  BoxDecoration decor() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(10.0), color: Colors.white);
  }
}

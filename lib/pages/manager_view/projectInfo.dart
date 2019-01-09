import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  int photoIndex = 0;

  List<String> pics = [
    'assets/background1.jpg',
    'assets/background2.jpg',
    'assets/colorspick.jpg',
    'assets/design.jpg',
    'assets/desk.jpg',
    'assets/desk1.jpg',
    'assets/idbackground.jpg',
    'assets/room.jpg',
    'assets/structure.jpg',
    'assets/project1.jpg',
    'assets/project2.jpg',
  ];

  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < pics.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          'Cross Street',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {},
          )
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      backgroundColor: Colors.deepPurple,
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      // borderRadius: BorderRadius.only(
                      //     bottomLeft: Radius.circular(20.0),
                      //     bottomRight: Radius.circular(20.0)),
                      image: DecorationImage(
                          image: AssetImage(pics[photoIndex]),
                          fit: BoxFit.fill),
                    ),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: <Widget>[
                  //     IconButton(
                  //       icon: Icon(Icons.arrow_back),
                  //       color: Colors.white,
                  //       onPressed: () {
                  //         setState(() {
                  //           Navigator.of(context).pop();
                  //         });
                  //       },
                  //     ),
                  //     Text(
                  //       'Cross Street',
                  //       style: TextStyle(color: Colors.white, fontSize: 30.0),
                  //     ),
                  //     IconButton(
                  //       icon: Icon(Icons.edit),
                  //       color: Colors.white,
                  //       onPressed: () {},
                  //     )
                  //   ],
                  // ),
                  GestureDetector(
                    onTap: _nextImage,
                    child: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                    ),
                  ),
                  GestureDetector(
                    onTap: _previousImage,
                    child: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width / 2,
                      color: Colors.transparent,
                    ),
                  ),
                  Positioned(
                    top: 175.0,
                    left: 20.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 4.0,
                        ),
                        SelectPhoto(
                          photoIndex: photoIndex,
                          numberOfDots: pics.length,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.0,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                height: MediaQuery.of(context).size.height / 3.0,
                width: double.infinity,
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    line(color: Colors.deepPurple, lineHeight: 5.0),
                    box(),
                    infoRow(
                        infoIcon: Icon(Icons.description),
                        infoText: "Description",
                        detail: "Cross street is the prestigeous building"),
                    box(),
                    line(color: Colors.grey, lineHeight: 2.0),
                    box(),
                    infoRow(
                        infoIcon: Icon(Icons.person),
                        infoText: "Client",
                        detail: "Jhon"),
                    box(),
                    line(color: Colors.grey, lineHeight: 2.0),
                    box(),
                    infoRow(
                        infoIcon: Icon(Icons.place),
                        infoText: "Address",
                        detail:
                            "#14 New BEL Road 2nd cross,Lime Street,Bangalore 560010"),
                    box(),
                    line(color: Colors.deepPurple, lineHeight: 5.0),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                height: 230,
                width: double.infinity,
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.deepPurple),
                      width: double.infinity,
                      height: 50.0,
                      margin: EdgeInsets.all(10.0),
                      child: infoRow(
                          infoIcon: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          infoText: "Client",
                          detail: "+91 9718293032"),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.deepPurple),
                      width: double.infinity,
                      height: 50.0,
                      // padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.all(10.0),
                      child: infoRow(
                          infoIcon: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          infoText: "Site",
                          detail: "+91 9718293032"),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.deepPurple),
                      width: double.infinity,
                      height: 50.0,
                      margin: EdgeInsets.all(10.0),
                      child: infoRow(
                          infoIcon: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          infoText: "Project Manager",
                          detail: "+91 9718293032"),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  SizedBox box() {
    return SizedBox(
      height: 10.0,
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

  Container line({Color color, double lineHeight}) {
    return Container(
      height: lineHeight,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: color),
    );
  }
}

class SelectPhoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  SelectPhoto({this.photoIndex, this.numberOfDots});

  Widget _inactivePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          height: 8.0,
          width: 8.0,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(4.0)),
        ),
      ),
    );
  }

  Widget _activePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 5.0),
        child: Container(
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, spreadRadius: 0.0, blurRadius: 2.0)
              ]),
        ),
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];

    for (int i = 0; i < numberOfDots; i++) {
      dots.add(i == photoIndex ? _activePhoto() : _inactivePhoto());
    }
    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}

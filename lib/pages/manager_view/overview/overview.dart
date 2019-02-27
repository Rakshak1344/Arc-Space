import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class Overview extends StatefulWidget {
  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  double selectedHeight = 100;

  var shape = BoxShape.circle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: Text('Overview'),
          centerTitle: true,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 210,
              width: MediaQuery.of(context).size.width / 2.2,
              margin: EdgeInsets.only(
                  top: 5.0, left: 10.0, bottom: 10.0, right: 5.0),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
              child: FlipCard(
                direction: FlipDirection.VERTICAL,
                front: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.red),
                    child: Center(
                      child: Text(
                        'Portfolio',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 40.0),
                      ),
                    )),
                back: Column(
                    children: <Widget>[
                      Container(
                        height: 30.0,
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
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        padding: EdgeInsets.all(10.0),
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
                              color: Colors.yellow,
                            ),
                            Icon(Icons.star),
                          ],
                        ),
                      ),
                      Text(
                        'Cericulam',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Civil Engineer',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Experience',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '15 years',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
              ),
            ),
            // FlipCard(
            //   direction: FlipDirection.HORIZONTAL,
            //   front: Expanded(
            //     child: Container(
            //       height: 210,
            //       width: 100,
            //       margin: EdgeInsets.only(
            //           top: 5.0, left: 10.0, bottom: 10.0, right: 5.0),
            //       decoration: BoxDecoration(
            //           color: Colors.red,
            //           borderRadius: BorderRadius.circular(10.0)),
            //       child: Text(
            //         'Portfolio',
            //         style: TextStyle(
            //             color: Colors.white, fontWeight: FontWeight.w500),
            //       ),
            //     ),
            //   ),
            //   back: Expanded(
            //     child: Container(
            //       height: 210,
            //       width: 100,
            //       margin: EdgeInsets.only(
            //           top: 5.0, left: 10.0, bottom: 10.0, right: 5.0),
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10.0),
            //           color: Colors.grey[500]),
            //       child: Column(
            //         children: <Widget>[
            //           Container(
            //             height: 30.0,
            //             width: double.infinity,
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.only(
            //                   topRight: Radius.circular(10.0),
            //                   topLeft: Radius.circular(10.0)),
            //               color: Colors.red,
            //             ),
            //             child: Center(
            //               child: Text(
            //                 'Portfolio',
            //                 style: TextStyle(
            //                     color: Colors.white,
            //                     fontWeight: FontWeight.w500),
            //               ),
            //             ),
            //           ),
            //           Container(
            //             margin: EdgeInsets.symmetric(horizontal: 10.0),
            //             padding: EdgeInsets.all(10.0),
            //             child: Row(
            //               children: <Widget>[
            //                 Icon(
            //                   Icons.star,
            //                   color: Colors.yellow,
            //                 ),
            //                 Icon(
            //                   Icons.star,
            //                   color: Colors.yellow,
            //                 ),
            //                 Icon(
            //                   Icons.star,
            //                   color: Colors.yellow,
            //                 ),
            //                 Icon(
            //                   Icons.star,
            //                   color: Colors.yellow,
            //                 ),
            //                 Icon(Icons.star),
            //               ],
            //             ),
            //           ),
            //           Text(
            //             'Cericulam',
            //             style: TextStyle(
            //                 color: Colors.red, fontWeight: FontWeight.w500),
            //           ),
            //           Text(
            //             'Civil Engineer',
            //             style: TextStyle(color: Colors.white),
            //           ),
            //           SizedBox(
            //             height: 10.0,
            //           ),
            //           Text(
            //             'Experience',
            //             style: TextStyle(
            //                 color: Colors.red, fontWeight: FontWeight.w500),
            //           ),
            //           Text(
            //             '15 years',
            //             style: TextStyle(color: Colors.white),
            //           )
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ));
  }
}



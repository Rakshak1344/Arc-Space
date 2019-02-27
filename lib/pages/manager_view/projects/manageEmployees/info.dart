import 'package:flutter/material.dart';

// enum InfoEmp { okay }

class Info {
  static Future info(BuildContext context) async {
    Function action = await showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              height: MediaQuery.of(context).size.height / 3.4,
              width: 200.0,
              child: Column(
                // physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  Container(
                    height: 50.0,
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.deepPurple),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Swipe Right to :',
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.remove,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.share,
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50.0,
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.deepPurple),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Swipe Left to :',
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.deepPurple,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      )),
                ],
              ),
            ),
          );
        });
    // return (action != null) ? action : InfoEmp.okay;
  }
}

// Container(
//   height: 50,
//   decoration: BoxDecoration(
//       borderRadius: BorderRadius.only(
//           topRight: Radius.circular(10.0),
//           topLeft: Radius.circular(10.0)),
//       color: Colors.deepPurple),
//   child: IconButton(
//     onPressed: () {
//       Navigator.of(context).canPop();
//     },
//     icon: Icon(Icons.close, color: Colors.white),
//   ),
// ),

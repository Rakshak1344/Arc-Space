import 'package:flutter/material.dart';

class CardProject extends StatelessWidget {
  final String projectTitle;
  final String projectAddress;
  final String projectImage;

  CardProject({this.projectTitle, this.projectAddress, this.projectImage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/projectInfo');
      },
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
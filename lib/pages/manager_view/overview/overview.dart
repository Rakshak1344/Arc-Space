import 'package:flutter/material.dart';
import 'package:login/pages/manager_view/overview/viewList.dart';

class Overview extends StatelessWidget {
  

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
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
        ),
       
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: <Widget>[
        //     Flexible(child: ViewList(),)
        //   ],
        // ),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white
          ),
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              
            ],
          ),
        ),
    );
  }
}

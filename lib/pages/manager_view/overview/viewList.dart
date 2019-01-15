import 'package:flutter/material.dart';
import 'package:login/pages/manager_view/overview/status.dart';


class ViewList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context,index)=>index == 0 ? SizedBox(
        child: Status(),
        height: MediaQuery.of(context).size.height * 0.16 ,
      ):Column(),
    );
  }
}
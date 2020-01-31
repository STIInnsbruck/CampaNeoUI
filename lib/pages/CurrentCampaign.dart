import 'package:flutter/material.dart';

//page About
class CurrentCampaign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Current Campaign"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 80, left: 150, right: 150),
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 10,
                ),
                color: Colors.white),
            //add campaneo describtion before the table
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

//page About
class CampaignDetails extends StatelessWidget {
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
            child: Column(
              children: <Widget>[
                Image.asset(
                  'logo/volkswagen.jpg',
                  height: 150,
                  width: 500,
                ),
                Column(children: [
                  Table(
                    children: [
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text("Company:",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Text("Volkswagen")),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Text("Contact Details:",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(""),
                        ),
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text("Campaign:",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Text("",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Text("Collected Data:",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(""),
                        ),
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text("Start Date:",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Text("",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Text("End Date:",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(""),
                        ),
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text("",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 50),
                          child: Text("",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 50),
                          child: Text("",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 50),
                          child: Image.asset(""),
                        ),
                      ])
                    ],
                  )
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

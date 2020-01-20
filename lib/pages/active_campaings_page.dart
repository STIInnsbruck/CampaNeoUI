import 'package:campaneo/pages/base_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ActiveCampaignsPage extends BasePage {
  static const String pageTitle = 'Active Campaigns';
  ActiveCampaignsPage() : super(title: pageTitle);

  @override
  Widget body() {
    return Column(
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
                Table(children: [
                  TableRow(children: [
                    Container(
                      padding: EdgeInsets.all(10),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Text("Company:",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Text("Volkswagen"),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      padding: EdgeInsets.all(10),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Text("Campaign:",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Text("Tire pressure tracking"),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: (Image.asset(
                        'images/volkswagen.jpg',
                        width: 150,
                        height: 150,
                      )),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 60),
                      child: Text(
                        "Collected Data:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 60),
                      child: Text("Speed, Acceleration, Tire pressure..."),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      padding: EdgeInsets.all(10),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 0),
                      child: Text("Start Date:",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 0),
                      child: Text("10/01/2020"),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      padding: EdgeInsets.all(10),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Text("End Date:",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Text("12/02/2020"),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      padding: EdgeInsets.all(10),
                    ),
                    Text(''),
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(20),
                              child: Icon(Icons.done_outline),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              child: Icon(Icons.cancel),
                            ),
                          ],
                        )
                      ],
                    )
                  ]),
                ]),
              ],
            )),
      ],
    );
  }
}

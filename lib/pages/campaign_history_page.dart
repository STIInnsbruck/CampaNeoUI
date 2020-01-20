import 'package:campaneo/pages/base_page.dart';
import 'package:flutter/material.dart';

class CampaignHistoryPage extends BasePage {
  static const String routeName = '/history';
  static const String pageTitle = 'Campaign History';
  CampaignHistoryPage() : super(title: pageTitle);

  @override
  Widget body() {
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 80, left: 150, right: 100),
            padding:
                const EdgeInsets.only(left: 20, right: 0, top: 20, bottom: 20),
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
                    Text(""),
                    Text(
                      "Campaign",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                    Text(""),
                    Text(
                      "Status",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                    Text(""),
                  ]),
                  TableRow(children: [
                    Container(
                      width: 100,
                      child: Image.asset(
                        "images/volkswagen.jpg",
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Text("Speed Tracking"),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 40, left: 45, right: 45),
                      child: ButtonTheme(
                        minWidth: 10.0,
                        height: 10.0,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text(
                            "Details",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Text("Completed"),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 50, right: 50),
                        child: new Column(
                          children: <Widget>[
//                            LinearPercentIndicator(
//                              width: 150.0,
//                              animation: true,
//                              animationDuration: 1000,
//                              lineHeight: 20.0,
//                              percent: 1.0,
//                              center: Text("100.0%"),
//                              linearStrokeCap: LinearStrokeCap.butt,
//                              progressColor: Colors.lightGreen,
//                            )
                          ],
                        ))
                  ]),
                  TableRow(children: [
                    Container(
                      width: 100,
                      child: Image.asset(
                        "images/seat.png",
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Text("Tire pressure monitoring"),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 40, left: 45, right: 45),
                      child: ButtonTheme(
                        minWidth: 10.0,
                        height: 10.0,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text(
                            "Details",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Text("Expired"),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 50, right: 10),
                        child: new Column(
                          children: <Widget>[
//                            LinearPercentIndicator(
//                              width: 150.0,
//                              animation: true,
//                              animationDuration: 1000,
//                              lineHeight: 20.0,
//                              percent: 0.5,
//                              center: Text("50.0%"),
//                              linearStrokeCap: LinearStrokeCap.butt,
//                              progressColor: Colors.orange,
//                            )
                          ],
                        ))
                  ]),
                  TableRow(children: [
                    Container(
                      width: 100,
                      child: Image.asset(
                        "images/skoda.jpg",
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Text("User behaviour"),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 40, left: 45, right: 45),
                      child: ButtonTheme(
                        minWidth: 10.0,
                        height: 10.0,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text(
                            "Details",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Text("Expired"),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 50, right: 10),
                        child: new Column(
                          children: <Widget>[
//                            LinearPercentIndicator(
//                              width: 150.0,
//                              animation: true,
//                              animationDuration: 1000,
//                              lineHeight: 20.0,
//                              percent: 0.1,
//                              center: Text("10.0%"),
//                              linearStrokeCap: LinearStrokeCap.butt,
//                              progressColor: Colors.red,
//                            )
                          ],
                        ))
                  ])
                ]),
              ],
            )),
      ],
    );
  }
}

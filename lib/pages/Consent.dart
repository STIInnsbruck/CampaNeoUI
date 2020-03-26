import 'package:flutter/material.dart';

import 'CampaignOverview.dart';
import 'CurrentCampaign.dart';

class Consent extends StatefulWidget {
  @override
  _ConsentState createState() => _ConsentState();
}

class _ConsentState extends State<Consent> {
  bool gps = false;
  bool tirepressure = false;
  bool eps = false;
  bool abs = false;
  bool speed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Collected Data"),
        ),
        body: Column(children: <Widget>[
          Container(
            width: 450,
            height: 500,
            margin: EdgeInsets.only(top: 80, left: 350, right: 350),
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
                Text("Do you agree to share the following data?"),
                Container(
                  padding: EdgeInsets.only(left: 50, right: 50, top: 20),
                  child: Table(
                    children: [
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.only(top: 15, left: 80),
                          child: Text("GPS"),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 80),
                          child: Checkbox(
                            value: gps,
                            onChanged: (bool value) {
                              setState(() {
                                gps = value;
                              });
                            },
                          ),
                        )
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.only(top: 15, left: 80),
                          child: Text("ABS"),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 80),
                          child: Checkbox(
                            value: abs,
                            onChanged: (bool value) {
                              setState(() {
                                abs = value;
                              });
                            },
                          ),
                        )
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.only(top: 15, left: 80),
                          child: Text("Tire Pressure"),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 80),
                          child: Checkbox(
                            value: tirepressure,
                            onChanged: (bool value) {
                              setState(() {
                                tirepressure = value;
                              });
                            },
                          ),
                        )
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.only(top: 15, left: 80),
                          child: Text("Speed"),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 80),
                          child: Checkbox(
                            value: speed,
                            onChanged: (bool value) {
                              setState(() {
                                speed = value;
                              });
                            },
                          ),
                        )
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.only(top: 15, left: 80),
                          child: Text("EPS"),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 80),
                          child: Checkbox(
                            value: eps,
                            onChanged: (bool value) {
                              setState(() {
                                eps = value;
                              });
                            },
                          ),
                        )
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: RaisedButton(
                            color: Colors.blue,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CurrentCampaign()),
                              );
                            },
                            child: const Text(
                              'I Agree',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: RaisedButton(
                            color: Colors.blue,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CampaignOverview()),
                              );
                            },
                            child: const Text(
                              'Disagree',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        Container(
                            padding: EdgeInsets.all(10), child: Text(" ")),
                        Container(
                            padding: EdgeInsets.only(top: 40, left: 40),
                            child: Text("Privacy Policy")),
                      ]),
                    ],
                  ),
                )
              ],
            ),
          )
        ]));
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(new CampaignOverview());
}

//page About
class CampaignOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Campaign Details"),
        ),
        body: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 80, left: 150, right: 150),
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 20),
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
                        new GestureDetector(
                          child: Container(
                            padding: EdgeInsets.only(top: 50),
                            child: Text("Roads of Innsbruck",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SimpleDialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        children: <Widget>[
                                          Container(
                                            height: 300.0,
                                            width: 500.0,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.all(15.0),
                                                  child: Text(
                                                    'The Tyrolean government wants to examine which roads of Innsbruck and  its conurbation are heavily used in order to determine where it is  necessary to invest more money into those roads that are more  frequently used. The data will be stored anonymized in  a central database in Kufstein owned by the government itself and will  be only shared if allowed with a working group of the University of  Innsbruck for running a research on how intensively streets in a city  are used at certain daytimes.',
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                    textAlign:
                                                        TextAlign.justify,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          right: 10,
                                                          top: 50),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: <Widget>[
                                                      RaisedButton(
                                                        color: Colors.blue,
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: Text(
                                                          'Okay',
                                                          style: TextStyle(
                                                              fontSize: 18.0,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )),
                            );
                          },
                        )
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: (Image.asset(
                            'logo/volkswagen.jpg',
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
                          child: Text(
                              "GPS, Speed, Accelaration, Tire pressure..."),
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
                          child: Text("12/10/2020"),
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
                                new GestureDetector(
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    child: Icon(Icons.done_outline),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SimpleDialog(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                children: <Widget>[
                                                  Container(
                                                    height: 300.0,
                                                    width: 500.0,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  15.0),
                                                          child: Text(
                                                            'Do you give consent to share the following data?',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black),
                                                            textAlign: TextAlign
                                                                .justify,
                                                          ),
                                                        ),
                                                        Column(
                                                          children: <Widget>[
                                                            Table(
                                                              border: TableBorder.all(
                                                                  color: Colors
                                                                      .white),
                                                              children: [
                                                                TableRow(
                                                                    children: [
                                                                      Container(
                                                                        child: Image
                                                                            .asset(
                                                                          'logo/gps.png',
                                                                          width:
                                                                              50,
                                                                          height:
                                                                              80,
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        child: Image
                                                                            .asset(
                                                                          'logo/speed.jpg',
                                                                          width:
                                                                              50,
                                                                          height:
                                                                              80,
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        child: Image
                                                                            .asset(
                                                                          'logo/fuel.jpg',
                                                                          width:
                                                                              50,
                                                                          height:
                                                                              80,
                                                                        ),
                                                                      )
                                                                    ]),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 10,
                                                                  right: 10,
                                                                  top: 50),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: <Widget>[
                                                              Container(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        right:
                                                                            20),
                                                                child:
                                                                    RaisedButton(
                                                                  color: Colors
                                                                      .blue,
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                  child: Text(
                                                                    'Consent',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            18.0,
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                              RaisedButton(
                                                                color:
                                                                    Colors.blue,
                                                                onPressed: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop();
                                                                },
                                                                child: Text(
                                                                  'Cancel',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18.0,
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 20,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              )),
                                    );
                                  },
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
        )
        //add campaneo describtion before the table

        );
  }
}

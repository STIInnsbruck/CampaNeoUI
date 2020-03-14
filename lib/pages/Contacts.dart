import 'package:flutter/material.dart';

void main() {
  runApp(new Contacts());
}

//page About
class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contacts"),
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
              child: Container(
                color: Colors.white,
                child: new Column(children: <Widget>[
                  Table(children: [
                    TableRow(children: [
                      Text(""),
                      Text(
                        "Website",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        width: 100,
                        child: Image.asset(
                          "logo/volkswagen.jpg",
                          width: 60,
                          height: 60,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("https://www.volkswagenag.com"),
                      ),
                      Container(
                        child: Text(
                          "",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        width: 100,
                        child: Image.asset(
                          "logo/UIBK.jpg",
                          width: 60,
                          height: 60,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("https://www.uibk.ac.at"),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20, right: 50),
                        child: Text(
                          "anelia.kurteva@sti2.at anna.fensel@sti2.at",
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        width: 100,
                        child: Image.asset(
                          "logo/moma.png",
                          width: 60,
                          height: 60,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("https://momatec.de"),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20, right: 50),
                        child: Text(
                          "",
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        width: 100,
                        child: Image.asset(
                          "logo/LB.png",
                          width: 60,
                          height: 60,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("https://www.uni-hannover.de/en/"),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20, right: 50),
                        child: Text(
                          "",
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        width: 100,
                        child: Image.asset(
                          "logo/ctsx.png",
                          width: 60,
                          height: 60,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("https://www.cstx-es.de"),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20, right: 50),
                        child: Text(
                          "",
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        width: 100,
                        child: Image.asset(
                          "logo/ag.png",
                          width: 60,
                          height: 60,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("https://www.wolfsburg-ag.com"),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20, right: 50),
                        child: Text(
                          "",
                        ),
                      ),
                    ])
                  ]),
                ]),
              ),
            ),
          ],
        ));
  }
}

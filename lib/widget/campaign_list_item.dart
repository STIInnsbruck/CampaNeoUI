import 'package:campaneo/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CampaignListItemWidget extends StatelessWidget {
  final String name;
  final String subtitle;

  CampaignListItemWidget({@required this.name, @required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: ListTile(
        onTap: () {
          print('HOLA'); // TODO
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: EdgeInsets.only(right: 12.0),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(width: 1.0, color: kDividerColorDark),
            ),
          ),
          child: Icon(
            Icons.announcement,
            size: 35,
            color: Colors.white,
          ),
        ),
        title: Text(
          name,
          style: kCardTitleTextStyleDark,
        ),
        subtitle: Row(
          children: <Widget>[
            Icon(
              Icons.linear_scale,
              color: Colors.white,
            ),
            Text(subtitle, style: kCardSubtitleTextStyleDark),
          ],
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          size: 30,
          color: kTextIconColorDark,
        ),
      ),
    );
  }
}

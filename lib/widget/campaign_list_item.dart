import 'package:campaneo/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CampaignListItemWidget extends StatefulWidget {
  final String name;
  final String subtitle;
  final Function onTap;
  final bool selected;

  CampaignListItemWidget({
    @required this.name,
    this.subtitle,
    @required this.onTap,
    @required this.selected,
  });

  @override
  _CampaignListItemWidgetState createState() => _CampaignListItemWidgetState();
}

class _CampaignListItemWidgetState extends State<CampaignListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: widget.selected
          ? kCardBackgroundSelectedColorDark
          : kCardBackgroundColorDark,
      child: ListTile(
        onTap: widget.onTap,
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
            color: widget.selected
                ? kTextIconSelectedColorDark
                : kTextIconColorDark,
          ),
        ),
        title: Text(
          widget.name,
          style: widget.selected
              ? kCardTitleTextSelectedStyleDark
              : kCardTitleTextStyleDark,
        ),
        subtitle: Row(
          children: <Widget>[
            Icon(
              Icons.linear_scale,
              color: widget.selected
                  ? kTextIconSelectedColorDark
                  : kTextIconColorDark,
            ),
            widget.subtitle != null
                ? Text(
                    widget.subtitle,
                    style: widget.selected
                        ? kCardSubtitleTextSelectedStyleDark
                        : kCardSubtitleTextStyleDark,
                  )
                : Container(),
          ],
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          size: 30,
          color:
              widget.selected ? kTextIconSelectedColorDark : kTextIconColorDark,
        ),
      ),
    );
  }
}

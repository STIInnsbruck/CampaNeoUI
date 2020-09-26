import 'package:campaneo/constants.dart';
import 'package:campaneo/data/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CampaignListItemWidget extends StatefulWidget {
  final Campaign campaign;
  final Function onTap;
  final bool selected;

  CampaignListItemWidget({
    @required this.campaign,
    @required this.onTap,
    @required this.selected,
  });

  @override
  _CampaignListItemWidgetState createState() => _CampaignListItemWidgetState();
}

class _CampaignListItemWidgetState extends State<CampaignListItemWidget> {
  @override
  Widget build(BuildContext context) {
    final subtitle = widget.campaign.getDateRange();

    return Container(
      color: widget.selected
          ? kCardBackgroundSelectedColorDark
          : kBackgroundColorDark,
      child: ListTile(
        focusColor: kCardBackgroundSelectedColorDark,
        hoverColor: kCardBackgroundColorDark,
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
          widget.campaign.name,
          style: widget.selected
              ? kCardTitleTextSelectedStyleDark
              : kCardTitleTextStyleDark,
        ),
        subtitle: Row(
          children: <Widget>[
            Icon(
              Icons.date_range,
              color: widget.selected
                  ? kTextIconSelectedColorDark
                  : kTextIconColorDark,
            ),
            Container(
              padding: EdgeInsets.only(right: 16.0),
            ),
            subtitle.replaceAll(RegExp('to'), '').trim().isNotEmpty
                ? Text(
                    subtitle,
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

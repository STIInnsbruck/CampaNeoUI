import 'package:flutter/material.dart';

Future<Map<String, bool>> showCampaignDataDialog(
    {@required BuildContext context}) async {
  assert(context != null);

  Widget dialog = _CampaignDataDialog();

  return showDialog<Map<String, bool>>(
    context: context,
    builder: (BuildContext context) {
      return dialog;
    },
  );
}

class _CampaignDataDialog extends StatefulWidget {
  @override
  _CampaignDataDialogState createState() => _CampaignDataDialogState();
}

class _CampaignDataDialogState extends State<_CampaignDataDialog> {
  Map<String, bool> _options = {
    'GPS': false,
    'ABS': false,
    'Tire pressure': false,
    'Speed': false,
    'EPS': false,
  };

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Do you agree to share the following data?"),
      actions: [
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          onPressed: () {
            Navigator.pop(context, _options);
          },
          child: Text('Accept'),
        ),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
      ],
      content: Container(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: _options.entries
                .map((option) => CheckboxListTile(
                      title: Text(option.key),
                      value: option.value,
                      onChanged: (bool newValue) {
                        setState(() {
                          _options[option.key] = newValue;
                        });
                      },
                    ))
                .toList()),
      ),
    );
  }
}

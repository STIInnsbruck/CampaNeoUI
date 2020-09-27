import 'package:campaneo/themes/theme_manager.dart';
import 'package:campaneo/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  static const String routeName = '/settings';
  static const String pageTitle = 'Settings';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: AppTheme.values.length,
        itemBuilder: (BuildContext context, int index) {
          final theme = AppTheme.values[index];
          return Card(
            child: ListTile(
              onTap: () {
                final themeManager = context.read<ThemeManager>();
                themeManager.setTheme(theme);
              },
              title: Text(getPrintName(theme)),
            ),
          );
        },
      ),
    );
  }
}

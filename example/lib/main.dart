import 'package:about/about.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Demo',
      home: const AboutPage(
        title: Text('About'),
        applicationVersion: 'Version {{ version }}, build #{{ buildNumber }}',
        applicationDescription: Text(
          'Displays an About dialog, which describes the application.',
          textAlign: TextAlign.justify,
        ),
        applicationIcon: FlutterLogo(size: 100),
        applicationLegalese: '© David PHAM-VAN, {{ year }}',
        children: <Widget>[
          MarkdownPageListTile(
            filename: 'README.md',
            title: Text('View Readme'),
            icon: Icon(Icons.all_inclusive),
          ),
          MarkdownPageListTile(
            filename: 'CHANGELOG.md',
            title: Text('View Changelog'),
            icon: Icon(Icons.view_list),
          ),
          MarkdownPageListTile(
            filename: 'LICENSE.md',
            title: Text('View License'),
            icon: Icon(Icons.description),
          ),
          MarkdownPageListTile(
            filename: 'CONTRIBUTING.md',
            title: Text('Contributing'),
            icon: Icon(Icons.share),
          ),
          MarkdownPageListTile(
            filename: 'CODE_OF_CONDUCT.md',
            title: Text('Code of conduct'),
            icon: Icon(Icons.sentiment_satisfied),
          ),
          LicensesPageListTile(
            title: Text('Open source Licenses'),
            icon: Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}

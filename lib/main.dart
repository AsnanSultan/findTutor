import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => new WebviewScaffold(
              url: "https://stutor.sapphost.com",
              withJavascript: true,
              supportMultipleWindows: true,
              withLocalStorage: true,
              allowFileURLs: true,
              enableAppScheme: true,
              appCacheEnabled: true,
              hidden: false,
              withZoom: true,
              scrollBar: true,
              geolocationEnabled: false,
              clearCookies: true,
              // usesCleartextTraffic="true"
            ),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lshort/url_shortener_screen.dart';
import 'package:lshort/url_shortner_state.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      ChangeNotifierProvider(
        child: MyApp(),
        create: (context) => UrlShortenerState(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: UrlShortenerScreen(),
    );
  }
}

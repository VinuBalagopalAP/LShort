import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UrlShortenerState extends ChangeNotifier {
  final urlController = TextEditingController();

  handleGetLinkButton() async {
    final longUrl = urlController.text;

    final String shortUrl = await getShortLink(longUrl);
  }

  Future<String> getShortLink(String longUrl) async {
    final result = await http.post(
      "https://cleanuri.com/api/v1/shorten",
      body: {"url": longUrl},
    );
    if (result.statusCode == 200) {
      print("Sucessfully Completed");
      print(result.body);
      return "";
    } else {
      print("Error in API");
      print(result.body);
      return "";
    }
  }
}

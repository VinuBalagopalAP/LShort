import 'package:flutter/material.dart';
import 'package:lshort/url_shortner_state.dart';
import 'package:provider/provider.dart';

class UrlShortenerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<UrlShortenerState>(context, listen: true);

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(32),
        width: double.infinity,
        child: Column(
          children: [
            Spacer(),
            Text(
              "Link Shortner",
              style: TextStyle(
                fontSize: 40,
                color: Colors.blue[600],
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Shorten your long URL quickly",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            TextField(
              controller: state.urlController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                filled: true,
                fillColor: Colors.grey[200],
                hintText: "Paste the Link",
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  state.handleGetLinkButton();
                },
                child: Text(
                  "Shorten Link",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:ai_assistance/secrets.dart';

class API {
  static Future<void> getAnswer(String question) async {
    final url = Uri.parse(
  'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=$apiKey',
    );

    final headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final body = jsonEncode({
      "contents": [
        {
          "parts": [
            {"text": question}
          ]
        }
      ],
      "max_tokens":2000,
      "temperature":0,
    });

    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final content = data['candidates'][0]['content']['parts'][0]['text'];
      print("Gemini's response: $content");
    } else {
      print("Request failed with status: ${response.statusCode}");
      print("Error body: ${response.body}");
    }
  }
}

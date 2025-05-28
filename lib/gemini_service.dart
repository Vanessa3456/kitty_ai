import 'package:ai_assistance/secrets.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiService {
  final model= GenerativeModel(model: 'models/gemini-1.5-pro'
, apiKey: apiKey);

  // Future<String> getResponse(String prompt) async {
  //   final
  // }
}
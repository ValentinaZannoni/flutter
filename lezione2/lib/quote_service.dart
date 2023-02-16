import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;


class QuoteService{

  void getQuote(String? token) async {
    final url = Uri.parse('https://the-one-api.dev/v2/quote');
    final res = await http.get(url, headers: {
      HttpHeaders.authorizationHeader: 'Bearer $token'
    });

    final data = jsonDecode(res.body) as Map<String, dynamic>;

    print(data['docs'][13]['dialog']);
  }

  void getQuoteCharacter(String? token, String characterid) async {
      final url = Uri.parse('https://the-one-api.dev/v2/character/$characterid/quote');

      final res = await http.get(url, headers: {
      HttpHeaders.authorizationHeader: 'Bearer $token'
    });

    final data = jsonDecode(res.body) as Map<String, dynamic>;

    print(data);
  }
}






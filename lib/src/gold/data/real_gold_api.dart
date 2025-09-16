import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Stream<double> getGoldPriceStream() async* {
  const String baseUrl = 'https://www.goldapi.io/api/XAU/EUR';
  const String accessToken = 'goldapi-5t7b65smfmehoo2-io';
  while (true) {
    final res = await http.get(
      Uri.parse(baseUrl),
      headers: {'x-access-token': accessToken},
    );
    if (res.statusCode == 200) {
      final data = jsonDecode(res.body);
      final price = data['price_gram_24k'] as double;
      yield price;
    }
    await Future.delayed(const Duration(seconds: 30));
  }
}

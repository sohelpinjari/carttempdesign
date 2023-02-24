import 'dart:ffi';

import 'package:http_auth/http_auth.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
class PaypalService {
  String domain = "https://api,sandbox.paypal.com";
  String clientId = '';
  String secret = '';

  Future<String> getAccessTocken() async {
    try {
      var client = BasicAuthClient(clientId, secret);
      var response = await client.post(Uri.parse('$domain/v1/oauth2/tokrn?grant_type=client_credentials'));

      if (response.statusCode == 200) {
        final body = convert.jsonDecode(response.body);
        return body ["access_token"];
      }
      return "0";
    } catch (e) {
      rethrow;
    }
  }
}

Future<Map<String, String>> createPaypalPayment(
    transactions, accessToken) async {
  try {
    var response = await http.post(Uri.parse("https://api,sandbox.paypal.com/v1/payments/payment"),
        body: convert.jsonEncode(transactions),
        headers: {
          "content-type": "application/json",
          'Authorization': 'Bearer ' + accessToken
        });

    final body = convert.jsonDecode(response.body);
    if (response.statusCode == 201) {
      if (body["links"] != null && body["links"].length > 0) {
        List links = body["links"];

        String executeUrl = "";
        String approvalUrl = "";
        final item = links.firstWhere((o) => o["rel"] == "approval_url",
            orElse: () => null);
        if (item != null) {
          approvalUrl = item["href"];
        }
        final item1 = links.firstWhere((o) => o["rel"] == "execute",
            orElse: () => null);
        if (item1 != null) {
          executeUrl = item1["href"];
        }
        return {"executeUrl": executeUrl, "approvalUrl": approvalUrl};
      }
      return  strin;
    } else {
      throw Exception(body["message"]);
    }
  } catch (e) {
    rethrow;
  }
}

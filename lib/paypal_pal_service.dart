import 'package:http_auth/http_auth.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class PaypalService {
  String domain = "https://api,sandbox.paypal.com";
  String clientId =
      'AeTlljGALqTeaPOFRqoMUEegumbHe7eI5k8gZQiF9wb1dnVEocU35IR8xSf76mT62PmNXJ8IPXjQJCJ3';
  String secret =
      'EFE5YRnFi0Ut-QNZSobX-gEmS9g7-cAUN8Z-DlidjIngCnk8inPkTgFXfAE9hJK7cM1fVbs6s0pfH3__';

  Future<String> getAccessTocken() async {
    try {
      var client = BasicAuthClient(clientId, secret);
      var response = await client.post(
          Uri.parse('$domain/v1/oauth2/tokrn?grant_type=client_credentials'));

      if (response.statusCode == 200) {
        final body = convert.jsonDecode(response.body);
        return body["access_token"];
      }
      return "0";
    } catch (e) {
      rethrow;
    }
  }

  createPaypalPayment(
      Map<String, dynamic> transactions, String accessToken) async {
    try {
      var response = await http.post(
        Uri.parse("https://api.sandbox.paypal.com/v1/payments/payment"),
        body: convert.jsonEncode(transactions),
        headers: {
          "content-type": "application/json",
          'Authorization': 'Bearer ' + accessToken,
        },
      );

      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 201) {
        if (body["links"] != null && body["links"].length > 0) {
          List links = body["links"];

          String executeUrl = "";
          String approvalUrl = "";
          final item = links.firstWhere(
            (o) => o["rel"] == "approval_url",
            orElse: () => null,
          );
          if (item != null) {
            approvalUrl = item["href"];
          }
          final item1 = links.firstWhere(
            (o) => o["rel"] == "execute",
            orElse: () => null,
          );
          if (item1 != null) {
            executeUrl = item1["href"];
          }
          return {"executeUrl": executeUrl, "approvalUrl": approvalUrl};
        } else {
          throw Exception("No links found in PayPal response");
        }
      } else {
        throw Exception(
            "PayPal API call failed with status code ${response.statusCode}: ${body["message"]}");
      }
    } catch (e) {
      // Rethrow the error or handle it in a different way
      rethrow;
    }
  }

  executePayment(String executeUrl, String payerID, String accessToken) async {
    try {
      var response = await http.post(
          Uri.parse("https://api.sandbox.paypal.com/v1/payments/payment"),
          body: convert.jsonEncode({"payer_id": ''}),
          headers: {
            "content-type": "application/json",
            'Authorization': 'Bearer ' + accessToken
          });

      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200) {
        print(body["id"]) ;
      }
      return "";
    } catch (e) {
      rethrow;
    }
  }
}

// Future<Map<String, String>> createPaypalPayment(
//     Map<String, dynamic> transactions, String accessToken) async {
//
// }

// Future<String> executePayment(url, payerId, accessToken) async {
//
// }

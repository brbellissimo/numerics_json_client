import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

import 'models.dart';

// Numeric server get data from a numeri handler
class NumericsKPIClient {
  Client httpClient = Client();

  NumericsKPIClient();

  Future<NumberKPI> getNumberFromUrl(String uri) async {
    final response = await httpClient.get(uri);
    NumberKPI numberKPI = NumberKPI.fromNumberJson(json.decode(response.body));
    return numberKPI;
  }
}

import 'package:numerics_json_client/numerics_json_client.dart';
import 'dart:async';

main() async {
  var numericsClient = new NumericsKPIClient();

  var kpiURL =
      "https://my-json-server.typicode.com/q-tools/json-samples/tickets";

  final sampleKPI = await numericsClient.getNumberFromUrl(kpiURL);

  print('${sampleKPI.postfix}: ${sampleKPI.value}');
}

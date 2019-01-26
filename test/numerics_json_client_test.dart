import 'package:numerics_json_client/numerics_json_client.dart';
import 'package:test/test.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:http/testing.dart';

void main() {
  group('Models -', () {
    test('NumberKPI', () {
      NumberKPI actualResult = NumberKPI.fromNumberJson({
        "postfix": "Tickets",
        "color": "Red",
        "data": {"value": 666}
      });

      expect(actualResult.postfix, equals("Tickets"));
      expect(actualResult.color, equals("Red"));
      expect(actualResult.value, equals(666));
    });
  });
  group('Client Calls -', () {
    NumericsKPIClient sut;

    setUp(() {
      sut = NumericsKPIClient();
    });

    test('getNumberFromUrl()', () async {
      final sampleNumberJson = {
        "postfix": "Tickets",
        "color": "Green",
        "data": {"value": 123}
      };
      sut.httpClient = MockClient((request) async {
        return Response(json.encode(sampleNumberJson), 200);
      });

      NumberKPI expectedResult = new NumberKPI.fromNumberJson(sampleNumberJson);
      NumberKPI actualResult = await sut.getNumberFromUrl("thisIsUrl");

      expect(actualResult.postfix, equals(expectedResult.postfix));
      expect(actualResult.color, equals(expectedResult.color));
      expect(actualResult.value, equals(expectedResult.value));
    });
  });
}

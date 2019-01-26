// Single Number KPI
class NumberKPI {
  int _value = 0;
  String _postfix = '';
  String _color = '';

  // {"postfix":"Tickets","data":{"value":1,"name":""}}
  NumberKPI.fromNumberJson(Map<String, dynamic> parsedJson) {
    _value = parsedJson['data']['value'];
    _postfix = parsedJson['postfix'];
    _color = parsedJson['color'];
  }

  String get postfix => _postfix;
  String get color => _color;

  int get value => _value;
}

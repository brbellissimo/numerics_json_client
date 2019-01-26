# Numerics JSON Client

Numerics JSON Client is a simple library that download and format data in the [Numerics Widget Data Specification](https://cynapse.com/docs/numerics/connect-custom-data/connect-custom-data-numerics-custom-json/) from a remote url.

## Usage

A simple usage example:

```dart
import 'package:numerics_json_client/numerics_json_client.dart';

main() {
  
  var numericsClient = new NumericsKPIClient();
  var sampleKPI = await numericsClient.getNumberFromUrl("https://my-url/my-path");
  
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme

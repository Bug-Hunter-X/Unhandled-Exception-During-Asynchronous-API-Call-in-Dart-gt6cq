```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Result<dynamic>> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return Result.success(data);
    } else {
      return Result.failure('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    return Result.failure('An error occurred: $e');
  }
}

class Result<T> {
  final T? data;
  final String? error;

  Result.success(this.data) : error = null;
  Result.failure(this.error) : data = null;
}
```
```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Handle the successful response
      final data = jsonDecode(response.body);
      // Use the data
    } else {
      // Handle the error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during the API call
    print('Error: $e');
    // Rethrow the exception to be handled by a higher level
    rethrow;
  }
}
```
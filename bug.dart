```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Handle successful response
      final data = jsonDecode(response.body);
      // Process the data
    } else {
      // Handle error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, including network errors
    print('Error fetching data: $e');
    // Consider rethrowing the exception or handling it appropriately
  }
}
```
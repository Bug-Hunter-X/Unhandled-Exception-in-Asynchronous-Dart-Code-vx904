```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      // Process the data
      print('Data fetched successfully: $data');
    } else {
      // Handle error response more gracefully
      throw Exception('Failed to load data: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('Error decoding JSON: $e');
  } on Exception catch (e) {
    // Handle other exceptions
    print('An error occurred: $e');
    // Optionally show a user-friendly error message
    // e.g., showDialog(...);
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```
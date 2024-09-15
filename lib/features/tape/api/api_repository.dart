import 'package:dio/dio.dart';
import 'package:the_quotation_book/features/tape/cubit/tape_cubit.dart';

class APIRepository {
  final Dio _dio = Dio();
  final String baseUrl = 'http://192.168.31.152:3000'; // Example base URL

  /// Fetches all quotations from the server
  Future<List<Quot>> fetchAllQuotations() async {
    try {
      final response = await _dio.get('$baseUrl/all');
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        return data.map((item) => Quot.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load quotations');
      }
    } catch (e) {
      throw Exception('Error occurred: $e');
    }
  }

  // Add this function to fetch random quotations
  Future<List<Quot>> fetchRandomQuotations(int count) async {
    try {
      final response = await _dio.get('$baseUrl/random', queryParameters: {'count': count});
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        return data.map((item) => Quot.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load random quotations');
      }
    } catch (e) {
      throw Exception('Error occurred: $e');
    }
  }

  Future<List<Quot>> searchQuotations(String query) async {
    try {
      final response = await _dio.get('$baseUrl/search', queryParameters: {'q': query});
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        return data.map((item) => Quot.fromJson(item)).toList();
      } else {
        throw Exception('Failed to search quotations');
      }
    } catch (e) {
      throw Exception('Error occurred: $e');
    }
  }

  Future<void> addQuotation(String author, String text) async {
    try {
      await _dio.post('$baseUrl/add', data: {'author': author, 'text': text});
    } catch (e) {
      throw Exception('Failed to add quotation: $e');
    }
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../widget/model/quote.dart';

class ApiRepository {
  final Dio _dio = Dio();
  final String _baseUrl = '/////';

  Future<List<Quote>> fetchAll() async {
    try {
      final response = await _dio.get("$_baseUrl/all");
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        return data.map((item) => Quote.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load');
      }
    } catch (e) {
      throw Exception('Error occurred: $e');
    }
  }

  Future<List<Quote>> fetchRandom (int count) async {
    try {
      final response =
          await _dio.get('$_baseUrl/random', queryParameters: {'count': count});
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        return data.map((item) => Quote.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load');
      }
    } catch (e) {
      throw Exception('Error occurred: $e');
    }
  }

 Future<List<Quote>> fetchSearch(
    {String? query, List<String>? categories, int limit = 15}) async {
  try {
    final queryParams = {
      if (query != null && query.isNotEmpty) 'q': query,
      if (categories != null && categories.isNotEmpty)
        'category': categories.join(','),
      'limit': limit,
    };

    final response =
        await _dio.get('$_baseUrl/search', queryParameters: queryParams);
    if (response.statusCode == 200) {
      List<dynamic> data = response.data;
      return data.map((item) => Quote.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load');
    }
  } catch (e) {
    debugPrint('fetchSearch Error: $e');
    throw Exception('Error occurred: $e');
  }
}
}

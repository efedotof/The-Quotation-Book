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
      debugPrint('fetchAll Error: $e');
      throw Exception('Error occurred: $e');
    }
  }

  Future<List<Quote>> fetchRandom(int count) async {
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
      debugPrint('fetchRandom Error: $e');
      throw Exception('Error occurred: $e');
    }
  }

  Future<List<Quote>> fetchSearch({String? query, String? category, required List<String> categories}) async {
    try {
      final response = await _dio.get('$_baseUrl/search', queryParameters: {
        if (query != null && query.isNotEmpty) 'q': query,
        if (category != null && category.isNotEmpty) 'category': category
      });
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
}



import 'dart:developer';

import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.1,
      child: TextField(
        onChanged: (value) => log(value.toString(), name: "TextField To Search"),
        controller: searchController,
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: IconButton(onPressed: () => searchController.clear(), icon: const Icon(Icons.cancel)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          filled: true,
        ),
        
      ),
    );
  }
}
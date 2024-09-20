import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_quotation_book/features/tape/cubit/tape_cubit.dart';

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
        onChanged: (value) => context.read<TapeCubit>().searchQuote(value),
        controller: searchController,
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: IconButton(onPressed: () {
            searchController.clear();
            context.read<TapeCubit>().clearSearch();
          }, icon: const Icon(Icons.cancel)),
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
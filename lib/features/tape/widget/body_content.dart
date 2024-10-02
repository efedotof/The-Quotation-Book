import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_quotation_book/features/tape/cubit/tape_cubit.dart';

import 'card_quot.dart';

class BodyContent extends StatelessWidget {
  const BodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TapeCubit>().state;
    
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ),
      child: state.when(
        init: () => const Center(child: SingleChildScrollView()),
        quotationsLoading: () => const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Center(child: CircularProgressIndicator()),
        ),
        quotationsLoaded: (result) => ListView(
          children: result
              .map((quot) => CardQuot(author: quot.author, text: quot.text))
              .toList(),
        ),
        quotationsError: (message) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Center(
            child: Text(message),
          ),
        ),
        searchLoading: () => const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Center(child: CircularProgressIndicator()),
        ),
        searchSuccess: (result, quote) => ListView(
          children: result
              .map((quot) => CardQuot(author: quot.author, text: quot.text))
              .toList(),
        ),
        searchError: (message) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Center(
            child: Text(message),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_quotation_book/features/tape/cubit/tape_cubit.dart';

class CardQuotation extends StatelessWidget {
  final String author;
  final String text;

  const CardQuotation({super.key, required this.author, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () => context.read<TapeCubit>().quotSave(author, text),
      child: Card(
        elevation: 3.9,
        color: Colors.grey,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(author),
                Text(text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

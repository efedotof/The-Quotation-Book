import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_quotation_book/features/tape/cubit/card_quot_cubit.dart';

import 'quote_container.dart';

class CardQuot extends StatefulWidget {
  final String author;
  final String text;

  const CardQuot({super.key, required this.author, required this.text});

  @override
  State<CardQuot> createState() => _CardQuotState();
}

class _CardQuotState extends State<CardQuot> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CardQuotCubit(vsync: this),
      child: BlocBuilder<CardQuotCubit, CardQuotState>(
        builder: (context, state) {
          final cubit = context.read<CardQuotCubit>();
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: QuoteContainer(
              isDoubleTapped: state.isDoubleTapped,
              onDoubleTap: () => cubit.onDoubleTap(context, widget.author, widget.text),
              author: widget.author,
              text: widget.text,
              scaleAnimation: cubit.scaleAnimation,
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'quote_container.dart';

class CardQuot extends StatefulWidget {
  final String author;
  final String text;

  const CardQuot({super.key, required this.author, required this.text});

  @override
  State<CardQuot> createState() => _CardQuotState();
}

class _CardQuotState extends State<CardQuot> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: QuoteContainer(
        author: widget.author,
        text: widget.text,
      ),
    );
  }
}

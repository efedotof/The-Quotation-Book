import 'package:flutter/material.dart';

import 'quote_content.dart';

class QuoteContainer extends StatelessWidget {
  final String author;
  final String text;

  const QuoteContainer({
    super.key,
    required this.author,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white
      ),
      child: GestureDetector(
        child: QuoteContent(author: author, text: text),
      ),
    );
  }
}

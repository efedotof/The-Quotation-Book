import 'package:flutter/material.dart';

class QuoteContent extends StatelessWidget {
  final String author;
  final String text;

  const QuoteContent({super.key, required this.author, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '~ $author ~',
          style: const TextStyle(fontSize: 18, color: Colors.black54),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.topLeft,
          child: Icon(Icons.format_quote, size: 30, color: Colors.blue[200]),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              text,
              style: const TextStyle(fontSize: 23, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Icon(Icons.format_quote, size: 30, color: Colors.blue[200]),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'quote_item.dart';

class QuoteList extends StatelessWidget {
  final List quotes;

  const QuoteList({
    super.key,
    required this.quotes,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: quotes.length,
      itemBuilder: (context, index) {
        final item = quotes[index];
        return QuoteItem(
          item: item,
          index: index,
        );
      },
    );
  }
}

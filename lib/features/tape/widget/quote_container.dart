import 'package:flutter/material.dart';

import 'favorite_icon.dart';
import 'quote_content.dart';

class QuoteContainer extends StatelessWidget {
  final bool isDoubleTapped;
  final VoidCallback onDoubleTap;
  final String author;
  final String text;
  final Animation<double> scaleAnimation;

  const QuoteContainer({
    super.key,
    required this.isDoubleTapped,
    required this.onDoubleTap,
    required this.author,
    required this.text,
    required this.scaleAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            Colors.white,
            isDoubleTapped ? Colors.red : Colors.white,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      duration: const Duration(seconds: 2),
      child: GestureDetector(
        onDoubleTap: onDoubleTap,
        child: Stack(
          children: [
            QuoteContent(author: author, text: text),
            FavoriteIcon(isDoubleTapped: isDoubleTapped, scaleAnimation: scaleAnimation),
          ],
        ),
      ),
    );
  }
}

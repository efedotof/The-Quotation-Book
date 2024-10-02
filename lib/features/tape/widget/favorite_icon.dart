import 'package:flutter/material.dart';

class FavoriteIcon extends StatelessWidget {
  final bool isDoubleTapped;
  final Animation<double> scaleAnimation;

  const FavoriteIcon({
    super.key,
    required this.isDoubleTapped,
    required this.scaleAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 10,
      child: AnimatedOpacity(
        opacity: isDoubleTapped ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 300),
        child: ScaleTransition(
          scale: scaleAnimation,
          child: const Icon(
            Icons.favorite,
            color: Colors.red,
            size: 30,
          ),
        ),
      ),
    );
  }
}

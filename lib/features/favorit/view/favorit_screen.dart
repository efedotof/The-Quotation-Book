import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:the_quotation_book/features/tape/widget/card_quotation.dart';

@RoutePage()
class FavoritScreen extends StatelessWidget {
  const FavoritScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My favorit'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Wrap(
            direction: Axis.vertical,
            spacing: 20,
            children: List.generate(100, (_) => const CardQuotation()),
          ),
        ),
      ),
    );
  }
}

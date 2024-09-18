import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:the_quotation_book/features/tape/widget/widget.dart';
import 'package:the_quotation_book/store/repository/box_repository.dart';

@RoutePage()
class FavoritScreen extends StatelessWidget {
  const FavoritScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Favorites'),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: ValueListenableBuilder(
              valueListenable: BoxRepository().listes(),
              builder: (context, box, widget) {
                final quotes = box.values.toList();
                if (quotes.isEmpty) {
                  return const Center(child: Text('No favorites yet'));
                }
                return ListView.builder(
                    itemCount: quotes.length,
                    itemBuilder: (context, index) {
                      final item = quotes[index];
                      return CardQuot();
                    });
              })),
    );
  }
}

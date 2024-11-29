import 'package:flutter/material.dart';
import 'package:the_quotation_book/generated/l10n.dart';

class NoFavoritesContainer extends StatelessWidget {
  const NoFavoritesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue.withOpacity(0.1),
        ),
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.center,
        child: Text(S.of(context).noFavoritesYet, style: Theme.of(context).textTheme.labelLarge,),
      ),
    );
  }
}

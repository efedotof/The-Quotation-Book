import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_quotation_book/features/favorit/cubit/favorit_cubit.dart';
import 'package:the_quotation_book/generated/l10n.dart';
import 'package:the_quotation_book/store/repository/box_repository.dart';

import '../widget/widget.dart';

@RoutePage()
class FavoritScreen extends StatelessWidget {
  const FavoritScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoritCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).myFavorites),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
          ),
          child: ValueListenableBuilder(
            valueListenable: BoxRepository().listes(),
            builder: (context, box, widget) {
              final quotes = box.values.toList();
              if (quotes.isEmpty) {
                return const NoFavoritesContainer();
              }
              return QuoteList(quotes: quotes);
            },
          ),
        ),
      ),
    );
  }
}

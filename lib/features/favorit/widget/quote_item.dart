import 'package:flutter/material.dart';
import 'package:the_quotation_book/generated/l10n.dart';
import 'package:the_quotation_book/store/repository/box_repository.dart';
import 'package:the_quotation_book/features/favorit/cubit/favorit_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'card_quot.dart';


class QuoteItem extends StatelessWidget {
  final dynamic item;
  final int index;

  const QuoteItem({
    super.key,
    required this.item,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(item.text),
      background: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.green,
        ),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 20.0),
        child: const Icon(Icons.notifications, color: Colors.white),
      ),
      secondaryBackground: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red,
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20.0),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      confirmDismiss: (direction) async {
        if (direction == DismissDirection.endToStart) {
          return await showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title:  Text(S.of(context).deleteFavorite),
                content: Text(S.of(context).areYouSureYouWantToDeleteThisFavorite),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child:  Text(S.of(context).cancel),
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child:  Text(S.of(context).delete),
                  ),
                ],
              );
            },
          );
        } else if (direction == DismissDirection.startToEnd) {
          context.read<FavoritCubit>().notificationAdd(context);
          debugPrint(">>>>Notification icon pressed");
          return false;
        }
        return false;
      },
      onDismissed: (direction) async {
        if (direction == DismissDirection.endToStart) {
          debugPrint('>>>> delete item');
          await BoxRepository().removeBox(index);
        }
      },
      child: CardQuot(
        author: item.author,
        text: item.text,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_quotation_book/features/tape/cubit/tape_cubit.dart';

class IconLabelChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconLabelChip({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    final isSelected = context.select<TapeCubit, bool>(
      (cubit) => cubit.selectedCategories.contains(label),
    );

    return ActionChip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 20,
            color: isSelected ? Colors.white : Colors.blue[200],
          ),
          const SizedBox(width: 8),
          Text(label),
        ],
      ),
      backgroundColor: isSelected ? Colors.blue[200] : Colors.grey[200],
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      onPressed: () {
        context.read<TapeCubit>().toggleCategory(label);
        context
            .read<TapeCubit>()
            .searchQuote();
        debugPrint('Chip pressed: $label');
      },
    );
  }
}

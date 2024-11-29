import 'package:flutter/material.dart';
import 'package:the_quotation_book/features/tape/local_date/local_date.dart';
import 'package:the_quotation_book/features/tape/widget/icon_label_chip.dart';
import 'package:the_quotation_book/generated/l10n.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: ListTile(
                title: Text(
                  S.of(context).drawerHeader,
                  style: TextStyle(
                    color: Theme.of(context).textTheme.labelLarge!.color,
                    fontSize: 23,
                  ),
                ),
              ),
            ),
            Wrap(
              runSpacing: 10,
              spacing: 12,
              children: List.generate(
                IconDrawer(context: context).iconDrawerCategory.length,
                (index) => IconLabelChip(
                  icon: IconDrawer(context: context).iconDrawerCategory[index],
                  label: IconDrawer(context: context).labelDrawerCategory[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

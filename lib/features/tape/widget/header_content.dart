import 'package:flutter/material.dart';
import 'package:the_quotation_book/generated/l10n.dart';

import 'search.dart';

class HeaderContent extends StatelessWidget {
  final bool isRefreshing;

  const HeaderContent({super.key, required this.isRefreshing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Search(),
              GestureDetector(
                onTap: () => Scaffold.of(context).openEndDrawer(),
                child: Icon(
                  Scaffold.of(context).isEndDrawerOpen ? Icons.menu_open : Icons.menu,
                  size: 30,
                ),
              )
            ],
          ),
          if (isRefreshing)
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue.withOpacity(0.1),
              ),
              padding: const EdgeInsets.all(8.0),
              child:  Center(
                child: Text(
                  S.of(context).dataIsRefreshing,
                  style: const TextStyle(color: Colors.blue, fontSize: 16),
                  
                ),
              ),
            ),
        ],
      ),
    );
  }
}

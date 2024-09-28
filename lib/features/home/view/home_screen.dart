import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:the_quotation_book/generated/l10n.dart';
import 'package:the_quotation_book/router/router.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
         TapeRoute(),
         FavoritRoute(),
         SettingsRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) => tabsRouter.setActiveIndex(index),
              items:  [
                BottomNavigationBarItem(
                    icon: const Icon(Icons.local_post_office_outlined),
                    label: S.of(context).tape
                ),
                BottomNavigationBarItem(
                    icon: const Icon(Icons.favorite_border), 
                    label: S.of(context).favorit
                ),
                BottomNavigationBarItem(
                    icon: const Icon(Icons.settings_outlined),
                    label: S.of(context).settings
                ),
              ]),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
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
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.local_post_office_outlined),
                    label: 'Tape'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border), 
                    label: 'Favorit'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings_outlined),
                    label: 'Settings'
                ),
              ]),
        );
      },
    );
  }
}

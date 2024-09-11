import 'package:auto_route/auto_route.dart';
import 'package:the_quotation_book/features/about/about.dart';
import 'package:the_quotation_book/features/favorit/favorit.dart';
import 'package:the_quotation_book/features/home/home.dart';
import 'package:the_quotation_book/features/settings/settings.dart';
import 'package:the_quotation_book/features/splash/splash.dart';
import 'package:the_quotation_book/features/tape/tape.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

 @override
 List<AutoRoute> get routes => [
    // AutoRoute(page: SplashRoute.page, path: '/'),
    AutoRoute(page: HomeRoute.page, path: '/',
      children: [
        AutoRoute(page: TapeRoute.page, path: 'tape'),
        AutoRoute(page: FavoritRoute.page, path: 'favorit'),
        AutoRoute(page: SettingsRoute.page, path: 'settings'),
      ]
    
    ),
    AutoRoute(page: AboutRoute.page, path: '/about')
 ];
}
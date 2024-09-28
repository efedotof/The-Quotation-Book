import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_quotation_book/features/settings/cubit/settings_cubit.dart';
import 'package:the_quotation_book/features/tape/cubit/tape_cubit.dart';
import 'package:the_quotation_book/language/cubit/language_cubit.dart';
import 'package:the_quotation_book/language/repository/language_repository.dart';
import 'package:the_quotation_book/router/router.dart';
import 'package:the_quotation_book/store/repository/box_repository.dart';
import 'package:the_quotation_book/theme/cubit/theme_cubit.dart';
import 'package:the_quotation_book/theme/repository/theme_repository.dart';
import 'package:the_quotation_book/theme/theme.dart';
import 'package:the_quotation_book/untils/in_app/in_app_repository.dart';
import 'generated/l10n.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  final prefs = await SharedPreferences.getInstance();
  final inApp = InAppRepository();
  inApp.init();
  final themeRepository = ThemeRepository(preferences: prefs);
  final languageRepository = LanguageRepository(prefs: prefs);
  final boxRepository = BoxRepository();
  boxRepository.initHive();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => ThemeCubit(interface: themeRepository)),
    BlocProvider(create: (context) => LanguageCubit(interface: languageRepository)),
    BlocProvider(create: (context) => TapeCubit(interface: boxRepository)),
    BlocProvider(create: (context) => SettingsCubit())
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp.router(
          locale: Locale(context.watch<LanguageCubit>().checkLocale()),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          theme: state.isDark ? darkTheme : lightTheme,
          routerConfig: _appRouter.config(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}


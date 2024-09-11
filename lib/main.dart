import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_quotation_book/router/router.dart';
import 'package:the_quotation_book/theme/cubit/theme_cubit.dart';
import 'package:the_quotation_book/theme/repository/theme_repository.dart';
import 'package:the_quotation_book/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();

  final themeRepository = ThemeRepository(preferences: prefs);

  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => ThemeCubit(interface: themeRepository))
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
          theme: state.isDark ? lightTheme: darkTheme,
          routerConfig: _appRouter.config(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

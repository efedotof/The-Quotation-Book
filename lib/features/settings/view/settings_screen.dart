import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_quotation_book/theme/cubit/theme_cubit.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            children: [
              BlocBuilder<ThemeCubit, ThemeState>(
                builder: (context, state) {
                  return Card(
                    child: ListTile(
                      leading: Icon(
                          state.isDark ? Icons.light_mode : Icons.dark_mode),
                      title: const Text('Theme'),
                      trailing: Switch(
                          value: state.isDark,
                          onChanged: (value) => _setTheme(context, value)),
                    ),
                  );
                },
              ),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.notifications_outlined),
                  title: const Text('Notification'),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.delete,
                  color: Colors.red,),
                  title: const Text('Clear Cash'),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.info,
                  color: Colors.green,),
                  title: const Text('About'),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _setTheme(BuildContext context, bool value) {
    context
        .read<ThemeCubit>()
        .setThemeBright(value ? Brightness.dark : Brightness.light);
  }
}

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_quotation_book/features/settings/cubit/settings_cubit.dart';
import 'package:the_quotation_book/generated/l10n.dart';
import 'package:the_quotation_book/router/router.dart';
import 'package:the_quotation_book/theme/cubit/theme_cubit.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).settings),
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
                      title: Text(S.of(context).theme),
                      trailing: Switch(
                          value: state.isDark,
                          onChanged: (value) => _setTheme(context, value)),
                    ),
                  );
                },
              ),
              // Card(
              //   child: ListTile(
              //     leading: const Icon(Icons.notifications_outlined),
              //     title: Text(S.of(context).notifications),
              //     onTap: () => context.read<SettingsCubit>().toggleNotifications(context),
              //   ),
              // ),
              Card(
                child: ListTile(
                  leading: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  title:  Text(S.of(context).clearCache),
                  onTap: () => context.read<SettingsCubit>().clearCache(context),
                ),
              ),
              Card(
                child: ListTile(
                  leading: const Icon(
                    Icons.language,
                    color: Colors.orange,
                  ),
                  title:  Text(S.of(context).language),
                  onTap: () => context.read<SettingsCubit>().selectLanguage(context),
                ),
              ),

              const SizedBox(height: 30,),

              Card(
                child: ListTile(
                  leading: const Icon(
                    Icons.info,
                    color: Colors.green,
                  ),
                  title:  Text(S.of(context).about),
                  onTap: () => context.pushRoute(const AboutRoute()),
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

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_quotation_book/generated/l10n.dart';
import 'package:the_quotation_book/language/cubit/language_cubit.dart';
@RoutePage()
class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).language),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            children: [
              Card(
                color: context.watch<LanguageCubit>().checkLocale() == 'ru'? Colors.blue[100]: Theme.of(context).cardColor,
                child: ListTile(
                  title: Text(S.of(context).russia_locale),
                  onTap: () => context.read<LanguageCubit>().setLocale('ru'),
                ),
              ),
              Card(
                color: context.watch<LanguageCubit>().checkLocale() == 'en'? Colors.blue[100]: Theme.of(context).cardColor,
                child: ListTile(
                  title: Text(S.of(context).english_locale),
                  onTap: () => context.read<LanguageCubit>().setLocale('en'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
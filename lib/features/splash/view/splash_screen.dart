import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_quotation_book/features/splash/cubit/splash_cubit.dart';
import 'package:the_quotation_book/generated/l10n.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(),
      child: BlocBuilder<SplashCubit, SplashState>(
        bloc:SplashCubit()..timerToNavigate(context),
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: Text(
                S.of(context).quotation,
                style: TextStyle(
                  color: Theme.of(context).textTheme.labelLarge!.color,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

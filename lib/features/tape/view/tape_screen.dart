import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_quotation_book/features/tape/cubit/tape_cubit.dart';
import 'package:the_quotation_book/features/tape/widget/widget.dart';

@RoutePage()
class TapeScreen extends StatelessWidget {
  const TapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => TapeCubit(),
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Search(),
                const SizedBox(
                  height: 10,
                ),
                BlocBuilder<TapeCubit, TapeState>(builder: (context, state) {
                  if (state is SearchLoading) {
                    return const Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        CircularProgressIndicator(),
                      ],
                    );
                  } else if (state is SearchInitial || state is SearchSuccess) {
                    return Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                              List.generate(100, (_) => const CardQuotation()),
                        ),
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                })
              ],
            ),
          ),
        ));
  }
}

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
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                ),
                child: const Search(),
              ),
            ),
          ],
          body: RefreshIndicator(
            onRefresh: () async {
              // Trigger the refresh action based on the current refresh type
              await context.read<TapeCubit>().refreshData();
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                ),
              child: BlocBuilder<TapeCubit, TapeState>(
                builder: (context, state) {
                  if (state is QuotationsLoading || state is SearchLoading) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  } else if (state is QuotationsLoaded) {
                    return ListView(
                      children: state.results
                          .map((quot) => CardQuotation(
                                author: quot.author,
                                text: quot.text,
                              ))
                          .toList(),
                    );
                  } else if (state is SearchSuccess) {
                    return ListView(
                      children: state.results
                          .map((quot) => CardQuotation(
                                author: quot.author,
                                text: quot.text,
                              ))
                          .toList(),
                    );
                  } else if (state is SearchError) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Text(state.message),
                      ),
                    );
                  } else if (state is QuotationsError) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Text(state.message),
                      ),
                    );
                  } else {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Text('No results found'),
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

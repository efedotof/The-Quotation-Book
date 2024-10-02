import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_quotation_book/features/tape/cubit/tape_cubit.dart';

import '../widget/widget.dart';

@RoutePage()
class TapeScreen extends StatefulWidget {
  const TapeScreen({super.key});

  @override
  State<TapeScreen> createState() => _TapeScreenState();
}

class _TapeScreenState extends State<TapeScreen> {
  bool isRefreshing = false;

  Future<void> _onRefresh(BuildContext context) async {
    setState(() {
      isRefreshing = true;
    });

    await context.read<TapeCubit>().refreshData();

    setState(() {
      isRefreshing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: HeaderContent(isRefreshing: isRefreshing),
            ),
          ],
          body: RefreshIndicator(
            onRefresh: () => _onRefresh(context),
            child: const BodyContent(),
          ),
        ),
      ),
      endDrawer: const CustomDrawer(),
    );
  }
}

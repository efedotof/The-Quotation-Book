import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../widget/widget.dart';

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
                  horizontal: MediaQuery.of(context).size.width * 0.05
                ), 
                child: const Search(),
              ),
            )
          ],
        body: Padding(
          padding:  EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
          ),
          child: ListView(
            children: List.generate(100, (index) => const CardQuot()),
          ),
        ),
        ),
        
      ),
    );
  }
}


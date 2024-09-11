import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage()
class TapeScreen extends StatelessWidget {
  const TapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(child: Text('Tape'),),
    );
  }
}
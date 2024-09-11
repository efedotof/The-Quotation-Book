import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage()
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(child: Text('About'),),
    );
  }
}
import 'dart:developer';

import 'package:flutter/material.dart';

class CardQuotation extends StatefulWidget {
  const CardQuotation({super.key});

  @override
  State<CardQuotation> createState() => _CardQuotationState();
}

class _CardQuotationState extends State<CardQuotation> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () => log('favorit', name: 'favorit'), //add favorit
      child: Card(
        elevation: 3.9,
        color: Colors.grey,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Author'),
                Text('Center text'),
                Text('Date'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
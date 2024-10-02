import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_quotation_book/features/tape/cubit/tape_cubit.dart';

part 'card_quot_state.dart';
part 'card_quot_cubit.freezed.dart';

class CardQuotCubit extends Cubit<CardQuotState> {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  CardQuotCubit({required TickerProvider vsync})
      : super(CardQuotState.initial()) {
    _controller = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 300),
      lowerBound: 0.0,
      upperBound: 1.0,
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        }
      });

    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    );
  }

  Animation<double> get scaleAnimation => _scaleAnimation;

  void onDoubleTap(BuildContext context, String author, String text) {
    
    debugPrint('>>>>> onDoubleTap');
    final newIsDouble = !state.isDoubleTapped;
    emit(state.copyWith(isDoubleTapped: newIsDouble));

    if (newIsDouble) {
      _controller.forward();
      Future.delayed(const Duration(seconds: 2), () {
        emit(state.copyWith(isDoubleTapped: false));
        // ignore: use_build_context_synchronously
        context.read<TapeCubit>().quotSave(author, text);
        _controller.reverse();
      });
    } else {
      _controller.reverse();
    }
  }

  @override
  Future<void> close() {
    _controller.dispose();
    return super.close();
  }
}

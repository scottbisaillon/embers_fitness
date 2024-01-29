import 'package:embers_fitness/view/common/bloc_ui_event.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void blocPopEffectListener<T>(BuildContext context, BlocUiEvent effect) {
  return switch (effect) {
    PopEvent<T>(data: final data) => context.pop(data),
    _ => {}
  };
}

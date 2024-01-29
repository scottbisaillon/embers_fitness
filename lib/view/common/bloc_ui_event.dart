import 'dart:ui';

import 'package:equatable/equatable.dart';

sealed class BlocUiEvent {}

final class PopEvent<T> extends Equatable implements BlocUiEvent {
  const PopEvent(this.data);

  const PopEvent.empty() : this(null);

  final T? data;

  @override
  List<Object?> get props => [data];
}

final class LoadingOverlayEvent extends Equatable implements BlocUiEvent {
  const LoadingOverlayEvent({required this.show});

  final bool show;

  @override
  List<Object?> get props => [show];
}

final class SnackbarEvent extends Equatable implements BlocUiEvent {
  const SnackbarEvent(this.message, this.color);

  final String message;
  final Color? color;

  @override
  List<Object?> get props => [message, color];
}

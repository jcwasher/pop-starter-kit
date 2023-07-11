import 'package:freezed_annotation/freezed_annotation.dart';

part 'controller_state.freezed.dart';

@freezed
abstract class ControllerState with _$ControllerState {
  const factory ControllerState.idle() = _ControllerStateIdle;
  const factory ControllerState.loading([String? message]) =
      _ControllerStateLoading;
  const factory ControllerState.error([String? message]) =
      _ControllerStateError;
}

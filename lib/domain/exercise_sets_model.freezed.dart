// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_sets_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExerciseSetsModel _$ExerciseSetsModelFromJson(Map<String, dynamic> json) {
  return _ExerciseSetsModel.fromJson(json);
}

/// @nodoc
mixin _$ExerciseSetsModel {
  List<ExerciseSetModel> get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseSetsModelCopyWith<ExerciseSetsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseSetsModelCopyWith<$Res> {
  factory $ExerciseSetsModelCopyWith(
          ExerciseSetsModel value, $Res Function(ExerciseSetsModel) then) =
      _$ExerciseSetsModelCopyWithImpl<$Res, ExerciseSetsModel>;
  @useResult
  $Res call({List<ExerciseSetModel> values});
}

/// @nodoc
class _$ExerciseSetsModelCopyWithImpl<$Res, $Val extends ExerciseSetsModel>
    implements $ExerciseSetsModelCopyWith<$Res> {
  _$ExerciseSetsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSetModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseSetsModelImplCopyWith<$Res>
    implements $ExerciseSetsModelCopyWith<$Res> {
  factory _$$ExerciseSetsModelImplCopyWith(_$ExerciseSetsModelImpl value,
          $Res Function(_$ExerciseSetsModelImpl) then) =
      __$$ExerciseSetsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ExerciseSetModel> values});
}

/// @nodoc
class __$$ExerciseSetsModelImplCopyWithImpl<$Res>
    extends _$ExerciseSetsModelCopyWithImpl<$Res, _$ExerciseSetsModelImpl>
    implements _$$ExerciseSetsModelImplCopyWith<$Res> {
  __$$ExerciseSetsModelImplCopyWithImpl(_$ExerciseSetsModelImpl _value,
      $Res Function(_$ExerciseSetsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_$ExerciseSetsModelImpl(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSetModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseSetsModelImpl extends _ExerciseSetsModel {
  const _$ExerciseSetsModelImpl({required final List<ExerciseSetModel> values})
      : _values = values,
        super._();

  factory _$ExerciseSetsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseSetsModelImplFromJson(json);

  final List<ExerciseSetModel> _values;
  @override
  List<ExerciseSetModel> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'ExerciseSetsModel(values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseSetsModelImpl &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseSetsModelImplCopyWith<_$ExerciseSetsModelImpl> get copyWith =>
      __$$ExerciseSetsModelImplCopyWithImpl<_$ExerciseSetsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseSetsModelImplToJson(
      this,
    );
  }
}

abstract class _ExerciseSetsModel extends ExerciseSetsModel {
  const factory _ExerciseSetsModel(
      {required final List<ExerciseSetModel> values}) = _$ExerciseSetsModelImpl;
  const _ExerciseSetsModel._() : super._();

  factory _ExerciseSetsModel.fromJson(Map<String, dynamic> json) =
      _$ExerciseSetsModelImpl.fromJson;

  @override
  List<ExerciseSetModel> get values;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseSetsModelImplCopyWith<_$ExerciseSetsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExerciseSetModel _$ExerciseSetModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'bodyWeight':
      return BodyWeightSetModel.fromJson(json);
    case 'resistance':
      return ResistanceSetModel.fromJson(json);
    case 'cardio':
      return CardioSetModel.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ExerciseSetModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ExerciseSetModel {
  int get number => throw _privateConstructorUsedError;
  @NullableDurationConverter()
  Duration? get duration => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int number, int reps,
            @NullableDurationConverter() Duration? duration)
        bodyWeight,
    required TResult Function(int number, int reps, double weight,
            @NullableDurationConverter() Duration? duration)
        resistance,
    required TResult Function(
            int number, double distance, @DurationConverter() Duration duration)
        cardio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int number, int reps,
            @NullableDurationConverter() Duration? duration)?
        bodyWeight,
    TResult? Function(int number, int reps, double weight,
            @NullableDurationConverter() Duration? duration)?
        resistance,
    TResult? Function(int number, double distance,
            @DurationConverter() Duration duration)?
        cardio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int number, int reps,
            @NullableDurationConverter() Duration? duration)?
        bodyWeight,
    TResult Function(int number, int reps, double weight,
            @NullableDurationConverter() Duration? duration)?
        resistance,
    TResult Function(int number, double distance,
            @DurationConverter() Duration duration)?
        cardio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BodyWeightSetModel value) bodyWeight,
    required TResult Function(ResistanceSetModel value) resistance,
    required TResult Function(CardioSetModel value) cardio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BodyWeightSetModel value)? bodyWeight,
    TResult? Function(ResistanceSetModel value)? resistance,
    TResult? Function(CardioSetModel value)? cardio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BodyWeightSetModel value)? bodyWeight,
    TResult Function(ResistanceSetModel value)? resistance,
    TResult Function(CardioSetModel value)? cardio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseSetModelCopyWith<ExerciseSetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseSetModelCopyWith<$Res> {
  factory $ExerciseSetModelCopyWith(
          ExerciseSetModel value, $Res Function(ExerciseSetModel) then) =
      _$ExerciseSetModelCopyWithImpl<$Res, ExerciseSetModel>;
  @useResult
  $Res call({int number, @NullableDurationConverter() Duration duration});
}

/// @nodoc
class _$ExerciseSetModelCopyWithImpl<$Res, $Val extends ExerciseSetModel>
    implements $ExerciseSetModelCopyWith<$Res> {
  _$ExerciseSetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration!
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyWeightSetModelImplCopyWith<$Res>
    implements $ExerciseSetModelCopyWith<$Res> {
  factory _$$BodyWeightSetModelImplCopyWith(_$BodyWeightSetModelImpl value,
          $Res Function(_$BodyWeightSetModelImpl) then) =
      __$$BodyWeightSetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number, int reps, @NullableDurationConverter() Duration? duration});
}

/// @nodoc
class __$$BodyWeightSetModelImplCopyWithImpl<$Res>
    extends _$ExerciseSetModelCopyWithImpl<$Res, _$BodyWeightSetModelImpl>
    implements _$$BodyWeightSetModelImplCopyWith<$Res> {
  __$$BodyWeightSetModelImplCopyWithImpl(_$BodyWeightSetModelImpl _value,
      $Res Function(_$BodyWeightSetModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? reps = null,
    Object? duration = freezed,
  }) {
    return _then(_$BodyWeightSetModelImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyWeightSetModelImpl implements BodyWeightSetModel {
  const _$BodyWeightSetModelImpl(
      {required this.number,
      required this.reps,
      @NullableDurationConverter() this.duration,
      final String? $type})
      : $type = $type ?? 'bodyWeight';

  factory _$BodyWeightSetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyWeightSetModelImplFromJson(json);

  @override
  final int number;
  @override
  final int reps;
  @override
  @NullableDurationConverter()
  final Duration? duration;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ExerciseSetModel.bodyWeight(number: $number, reps: $reps, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyWeightSetModelImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, reps, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyWeightSetModelImplCopyWith<_$BodyWeightSetModelImpl> get copyWith =>
      __$$BodyWeightSetModelImplCopyWithImpl<_$BodyWeightSetModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int number, int reps,
            @NullableDurationConverter() Duration? duration)
        bodyWeight,
    required TResult Function(int number, int reps, double weight,
            @NullableDurationConverter() Duration? duration)
        resistance,
    required TResult Function(
            int number, double distance, @DurationConverter() Duration duration)
        cardio,
  }) {
    return bodyWeight(number, reps, duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int number, int reps,
            @NullableDurationConverter() Duration? duration)?
        bodyWeight,
    TResult? Function(int number, int reps, double weight,
            @NullableDurationConverter() Duration? duration)?
        resistance,
    TResult? Function(int number, double distance,
            @DurationConverter() Duration duration)?
        cardio,
  }) {
    return bodyWeight?.call(number, reps, duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int number, int reps,
            @NullableDurationConverter() Duration? duration)?
        bodyWeight,
    TResult Function(int number, int reps, double weight,
            @NullableDurationConverter() Duration? duration)?
        resistance,
    TResult Function(int number, double distance,
            @DurationConverter() Duration duration)?
        cardio,
    required TResult orElse(),
  }) {
    if (bodyWeight != null) {
      return bodyWeight(number, reps, duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BodyWeightSetModel value) bodyWeight,
    required TResult Function(ResistanceSetModel value) resistance,
    required TResult Function(CardioSetModel value) cardio,
  }) {
    return bodyWeight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BodyWeightSetModel value)? bodyWeight,
    TResult? Function(ResistanceSetModel value)? resistance,
    TResult? Function(CardioSetModel value)? cardio,
  }) {
    return bodyWeight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BodyWeightSetModel value)? bodyWeight,
    TResult Function(ResistanceSetModel value)? resistance,
    TResult Function(CardioSetModel value)? cardio,
    required TResult orElse(),
  }) {
    if (bodyWeight != null) {
      return bodyWeight(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyWeightSetModelImplToJson(
      this,
    );
  }
}

abstract class BodyWeightSetModel implements ExerciseSetModel {
  const factory BodyWeightSetModel(
          {required final int number,
          required final int reps,
          @NullableDurationConverter() final Duration? duration}) =
      _$BodyWeightSetModelImpl;

  factory BodyWeightSetModel.fromJson(Map<String, dynamic> json) =
      _$BodyWeightSetModelImpl.fromJson;

  @override
  int get number;
  int get reps;
  @override
  @NullableDurationConverter()
  Duration? get duration;
  @override
  @JsonKey(ignore: true)
  _$$BodyWeightSetModelImplCopyWith<_$BodyWeightSetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResistanceSetModelImplCopyWith<$Res>
    implements $ExerciseSetModelCopyWith<$Res> {
  factory _$$ResistanceSetModelImplCopyWith(_$ResistanceSetModelImpl value,
          $Res Function(_$ResistanceSetModelImpl) then) =
      __$$ResistanceSetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number,
      int reps,
      double weight,
      @NullableDurationConverter() Duration? duration});
}

/// @nodoc
class __$$ResistanceSetModelImplCopyWithImpl<$Res>
    extends _$ExerciseSetModelCopyWithImpl<$Res, _$ResistanceSetModelImpl>
    implements _$$ResistanceSetModelImplCopyWith<$Res> {
  __$$ResistanceSetModelImplCopyWithImpl(_$ResistanceSetModelImpl _value,
      $Res Function(_$ResistanceSetModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? reps = null,
    Object? weight = null,
    Object? duration = freezed,
  }) {
    return _then(_$ResistanceSetModelImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResistanceSetModelImpl implements ResistanceSetModel {
  const _$ResistanceSetModelImpl(
      {required this.number,
      required this.reps,
      required this.weight,
      @NullableDurationConverter() this.duration,
      final String? $type})
      : $type = $type ?? 'resistance';

  factory _$ResistanceSetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResistanceSetModelImplFromJson(json);

  @override
  final int number;
  @override
  final int reps;
  @override
  final double weight;
  @override
  @NullableDurationConverter()
  final Duration? duration;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ExerciseSetModel.resistance(number: $number, reps: $reps, weight: $weight, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResistanceSetModelImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, reps, weight, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResistanceSetModelImplCopyWith<_$ResistanceSetModelImpl> get copyWith =>
      __$$ResistanceSetModelImplCopyWithImpl<_$ResistanceSetModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int number, int reps,
            @NullableDurationConverter() Duration? duration)
        bodyWeight,
    required TResult Function(int number, int reps, double weight,
            @NullableDurationConverter() Duration? duration)
        resistance,
    required TResult Function(
            int number, double distance, @DurationConverter() Duration duration)
        cardio,
  }) {
    return resistance(number, reps, weight, duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int number, int reps,
            @NullableDurationConverter() Duration? duration)?
        bodyWeight,
    TResult? Function(int number, int reps, double weight,
            @NullableDurationConverter() Duration? duration)?
        resistance,
    TResult? Function(int number, double distance,
            @DurationConverter() Duration duration)?
        cardio,
  }) {
    return resistance?.call(number, reps, weight, duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int number, int reps,
            @NullableDurationConverter() Duration? duration)?
        bodyWeight,
    TResult Function(int number, int reps, double weight,
            @NullableDurationConverter() Duration? duration)?
        resistance,
    TResult Function(int number, double distance,
            @DurationConverter() Duration duration)?
        cardio,
    required TResult orElse(),
  }) {
    if (resistance != null) {
      return resistance(number, reps, weight, duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BodyWeightSetModel value) bodyWeight,
    required TResult Function(ResistanceSetModel value) resistance,
    required TResult Function(CardioSetModel value) cardio,
  }) {
    return resistance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BodyWeightSetModel value)? bodyWeight,
    TResult? Function(ResistanceSetModel value)? resistance,
    TResult? Function(CardioSetModel value)? cardio,
  }) {
    return resistance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BodyWeightSetModel value)? bodyWeight,
    TResult Function(ResistanceSetModel value)? resistance,
    TResult Function(CardioSetModel value)? cardio,
    required TResult orElse(),
  }) {
    if (resistance != null) {
      return resistance(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResistanceSetModelImplToJson(
      this,
    );
  }
}

abstract class ResistanceSetModel implements ExerciseSetModel {
  const factory ResistanceSetModel(
          {required final int number,
          required final int reps,
          required final double weight,
          @NullableDurationConverter() final Duration? duration}) =
      _$ResistanceSetModelImpl;

  factory ResistanceSetModel.fromJson(Map<String, dynamic> json) =
      _$ResistanceSetModelImpl.fromJson;

  @override
  int get number;
  int get reps;
  double get weight;
  @override
  @NullableDurationConverter()
  Duration? get duration;
  @override
  @JsonKey(ignore: true)
  _$$ResistanceSetModelImplCopyWith<_$ResistanceSetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CardioSetModelImplCopyWith<$Res>
    implements $ExerciseSetModelCopyWith<$Res> {
  factory _$$CardioSetModelImplCopyWith(_$CardioSetModelImpl value,
          $Res Function(_$CardioSetModelImpl) then) =
      __$$CardioSetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number, double distance, @DurationConverter() Duration duration});
}

/// @nodoc
class __$$CardioSetModelImplCopyWithImpl<$Res>
    extends _$ExerciseSetModelCopyWithImpl<$Res, _$CardioSetModelImpl>
    implements _$$CardioSetModelImplCopyWith<$Res> {
  __$$CardioSetModelImplCopyWithImpl(
      _$CardioSetModelImpl _value, $Res Function(_$CardioSetModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? distance = null,
    Object? duration = null,
  }) {
    return _then(_$CardioSetModelImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardioSetModelImpl implements CardioSetModel {
  const _$CardioSetModelImpl(
      {required this.number,
      required this.distance,
      @DurationConverter() required this.duration,
      final String? $type})
      : $type = $type ?? 'cardio';

  factory _$CardioSetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardioSetModelImplFromJson(json);

  @override
  final int number;
  @override
  final double distance;
  @override
  @DurationConverter()
  final Duration duration;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ExerciseSetModel.cardio(number: $number, distance: $distance, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardioSetModelImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, distance, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardioSetModelImplCopyWith<_$CardioSetModelImpl> get copyWith =>
      __$$CardioSetModelImplCopyWithImpl<_$CardioSetModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int number, int reps,
            @NullableDurationConverter() Duration? duration)
        bodyWeight,
    required TResult Function(int number, int reps, double weight,
            @NullableDurationConverter() Duration? duration)
        resistance,
    required TResult Function(
            int number, double distance, @DurationConverter() Duration duration)
        cardio,
  }) {
    return cardio(number, distance, duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int number, int reps,
            @NullableDurationConverter() Duration? duration)?
        bodyWeight,
    TResult? Function(int number, int reps, double weight,
            @NullableDurationConverter() Duration? duration)?
        resistance,
    TResult? Function(int number, double distance,
            @DurationConverter() Duration duration)?
        cardio,
  }) {
    return cardio?.call(number, distance, duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int number, int reps,
            @NullableDurationConverter() Duration? duration)?
        bodyWeight,
    TResult Function(int number, int reps, double weight,
            @NullableDurationConverter() Duration? duration)?
        resistance,
    TResult Function(int number, double distance,
            @DurationConverter() Duration duration)?
        cardio,
    required TResult orElse(),
  }) {
    if (cardio != null) {
      return cardio(number, distance, duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BodyWeightSetModel value) bodyWeight,
    required TResult Function(ResistanceSetModel value) resistance,
    required TResult Function(CardioSetModel value) cardio,
  }) {
    return cardio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BodyWeightSetModel value)? bodyWeight,
    TResult? Function(ResistanceSetModel value)? resistance,
    TResult? Function(CardioSetModel value)? cardio,
  }) {
    return cardio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BodyWeightSetModel value)? bodyWeight,
    TResult Function(ResistanceSetModel value)? resistance,
    TResult Function(CardioSetModel value)? cardio,
    required TResult orElse(),
  }) {
    if (cardio != null) {
      return cardio(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CardioSetModelImplToJson(
      this,
    );
  }
}

abstract class CardioSetModel implements ExerciseSetModel {
  const factory CardioSetModel(
          {required final int number,
          required final double distance,
          @DurationConverter() required final Duration duration}) =
      _$CardioSetModelImpl;

  factory CardioSetModel.fromJson(Map<String, dynamic> json) =
      _$CardioSetModelImpl.fromJson;

  @override
  int get number;
  double get distance;
  @override
  @DurationConverter()
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$CardioSetModelImplCopyWith<_$CardioSetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

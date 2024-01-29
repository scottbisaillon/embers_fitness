// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_sets_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExerciseSetsEntity _$ExerciseSetsEntityFromJson(Map<String, dynamic> json) {
  return _ExerciseSetsEntity.fromJson(json);
}

/// @nodoc
mixin _$ExerciseSetsEntity {
  List<ExerciseSetEntity> get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseSetsEntityCopyWith<ExerciseSetsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseSetsEntityCopyWith<$Res> {
  factory $ExerciseSetsEntityCopyWith(
          ExerciseSetsEntity value, $Res Function(ExerciseSetsEntity) then) =
      _$ExerciseSetsEntityCopyWithImpl<$Res, ExerciseSetsEntity>;
  @useResult
  $Res call({List<ExerciseSetEntity> values});
}

/// @nodoc
class _$ExerciseSetsEntityCopyWithImpl<$Res, $Val extends ExerciseSetsEntity>
    implements $ExerciseSetsEntityCopyWith<$Res> {
  _$ExerciseSetsEntityCopyWithImpl(this._value, this._then);

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
              as List<ExerciseSetEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseSetsEntityImplCopyWith<$Res>
    implements $ExerciseSetsEntityCopyWith<$Res> {
  factory _$$ExerciseSetsEntityImplCopyWith(_$ExerciseSetsEntityImpl value,
          $Res Function(_$ExerciseSetsEntityImpl) then) =
      __$$ExerciseSetsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ExerciseSetEntity> values});
}

/// @nodoc
class __$$ExerciseSetsEntityImplCopyWithImpl<$Res>
    extends _$ExerciseSetsEntityCopyWithImpl<$Res, _$ExerciseSetsEntityImpl>
    implements _$$ExerciseSetsEntityImplCopyWith<$Res> {
  __$$ExerciseSetsEntityImplCopyWithImpl(_$ExerciseSetsEntityImpl _value,
      $Res Function(_$ExerciseSetsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_$ExerciseSetsEntityImpl(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSetEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseSetsEntityImpl extends _ExerciseSetsEntity {
  const _$ExerciseSetsEntityImpl(
      {required final List<ExerciseSetEntity> values})
      : _values = values,
        super._();

  factory _$ExerciseSetsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseSetsEntityImplFromJson(json);

  final List<ExerciseSetEntity> _values;
  @override
  List<ExerciseSetEntity> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'ExerciseSetsEntity(values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseSetsEntityImpl &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseSetsEntityImplCopyWith<_$ExerciseSetsEntityImpl> get copyWith =>
      __$$ExerciseSetsEntityImplCopyWithImpl<_$ExerciseSetsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseSetsEntityImplToJson(
      this,
    );
  }
}

abstract class _ExerciseSetsEntity extends ExerciseSetsEntity {
  const factory _ExerciseSetsEntity(
          {required final List<ExerciseSetEntity> values}) =
      _$ExerciseSetsEntityImpl;
  const _ExerciseSetsEntity._() : super._();

  factory _ExerciseSetsEntity.fromJson(Map<String, dynamic> json) =
      _$ExerciseSetsEntityImpl.fromJson;

  @override
  List<ExerciseSetEntity> get values;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseSetsEntityImplCopyWith<_$ExerciseSetsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExerciseSetEntity _$ExerciseSetEntityFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'bodyWeight':
      return BodyWeightSetEntity.fromJson(json);
    case 'resistance':
      return ResistanceSetEntity.fromJson(json);
    case 'cardio':
      return CardioSetEntity.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ExerciseSetEntity',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ExerciseSetEntity {
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
    required TResult Function(BodyWeightSetEntity value) bodyWeight,
    required TResult Function(ResistanceSetEntity value) resistance,
    required TResult Function(CardioSetEntity value) cardio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BodyWeightSetEntity value)? bodyWeight,
    TResult? Function(ResistanceSetEntity value)? resistance,
    TResult? Function(CardioSetEntity value)? cardio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BodyWeightSetEntity value)? bodyWeight,
    TResult Function(ResistanceSetEntity value)? resistance,
    TResult Function(CardioSetEntity value)? cardio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseSetEntityCopyWith<ExerciseSetEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseSetEntityCopyWith<$Res> {
  factory $ExerciseSetEntityCopyWith(
          ExerciseSetEntity value, $Res Function(ExerciseSetEntity) then) =
      _$ExerciseSetEntityCopyWithImpl<$Res, ExerciseSetEntity>;
  @useResult
  $Res call({int number, @NullableDurationConverter() Duration duration});
}

/// @nodoc
class _$ExerciseSetEntityCopyWithImpl<$Res, $Val extends ExerciseSetEntity>
    implements $ExerciseSetEntityCopyWith<$Res> {
  _$ExerciseSetEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$BodyWeightSetEntityImplCopyWith<$Res>
    implements $ExerciseSetEntityCopyWith<$Res> {
  factory _$$BodyWeightSetEntityImplCopyWith(_$BodyWeightSetEntityImpl value,
          $Res Function(_$BodyWeightSetEntityImpl) then) =
      __$$BodyWeightSetEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number, int reps, @NullableDurationConverter() Duration? duration});
}

/// @nodoc
class __$$BodyWeightSetEntityImplCopyWithImpl<$Res>
    extends _$ExerciseSetEntityCopyWithImpl<$Res, _$BodyWeightSetEntityImpl>
    implements _$$BodyWeightSetEntityImplCopyWith<$Res> {
  __$$BodyWeightSetEntityImplCopyWithImpl(_$BodyWeightSetEntityImpl _value,
      $Res Function(_$BodyWeightSetEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? reps = null,
    Object? duration = freezed,
  }) {
    return _then(_$BodyWeightSetEntityImpl(
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
class _$BodyWeightSetEntityImpl implements BodyWeightSetEntity {
  const _$BodyWeightSetEntityImpl(
      {required this.number,
      required this.reps,
      @NullableDurationConverter() this.duration,
      final String? $type})
      : $type = $type ?? 'bodyWeight';

  factory _$BodyWeightSetEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyWeightSetEntityImplFromJson(json);

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
    return 'ExerciseSetEntity.bodyWeight(number: $number, reps: $reps, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyWeightSetEntityImpl &&
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
  _$$BodyWeightSetEntityImplCopyWith<_$BodyWeightSetEntityImpl> get copyWith =>
      __$$BodyWeightSetEntityImplCopyWithImpl<_$BodyWeightSetEntityImpl>(
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
    required TResult Function(BodyWeightSetEntity value) bodyWeight,
    required TResult Function(ResistanceSetEntity value) resistance,
    required TResult Function(CardioSetEntity value) cardio,
  }) {
    return bodyWeight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BodyWeightSetEntity value)? bodyWeight,
    TResult? Function(ResistanceSetEntity value)? resistance,
    TResult? Function(CardioSetEntity value)? cardio,
  }) {
    return bodyWeight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BodyWeightSetEntity value)? bodyWeight,
    TResult Function(ResistanceSetEntity value)? resistance,
    TResult Function(CardioSetEntity value)? cardio,
    required TResult orElse(),
  }) {
    if (bodyWeight != null) {
      return bodyWeight(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyWeightSetEntityImplToJson(
      this,
    );
  }
}

abstract class BodyWeightSetEntity implements ExerciseSetEntity {
  const factory BodyWeightSetEntity(
          {required final int number,
          required final int reps,
          @NullableDurationConverter() final Duration? duration}) =
      _$BodyWeightSetEntityImpl;

  factory BodyWeightSetEntity.fromJson(Map<String, dynamic> json) =
      _$BodyWeightSetEntityImpl.fromJson;

  @override
  int get number;
  int get reps;
  @override
  @NullableDurationConverter()
  Duration? get duration;
  @override
  @JsonKey(ignore: true)
  _$$BodyWeightSetEntityImplCopyWith<_$BodyWeightSetEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResistanceSetEntityImplCopyWith<$Res>
    implements $ExerciseSetEntityCopyWith<$Res> {
  factory _$$ResistanceSetEntityImplCopyWith(_$ResistanceSetEntityImpl value,
          $Res Function(_$ResistanceSetEntityImpl) then) =
      __$$ResistanceSetEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number,
      int reps,
      double weight,
      @NullableDurationConverter() Duration? duration});
}

/// @nodoc
class __$$ResistanceSetEntityImplCopyWithImpl<$Res>
    extends _$ExerciseSetEntityCopyWithImpl<$Res, _$ResistanceSetEntityImpl>
    implements _$$ResistanceSetEntityImplCopyWith<$Res> {
  __$$ResistanceSetEntityImplCopyWithImpl(_$ResistanceSetEntityImpl _value,
      $Res Function(_$ResistanceSetEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? reps = null,
    Object? weight = null,
    Object? duration = freezed,
  }) {
    return _then(_$ResistanceSetEntityImpl(
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
class _$ResistanceSetEntityImpl implements ResistanceSetEntity {
  const _$ResistanceSetEntityImpl(
      {required this.number,
      required this.reps,
      required this.weight,
      @NullableDurationConverter() this.duration,
      final String? $type})
      : $type = $type ?? 'resistance';

  factory _$ResistanceSetEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResistanceSetEntityImplFromJson(json);

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
    return 'ExerciseSetEntity.resistance(number: $number, reps: $reps, weight: $weight, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResistanceSetEntityImpl &&
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
  _$$ResistanceSetEntityImplCopyWith<_$ResistanceSetEntityImpl> get copyWith =>
      __$$ResistanceSetEntityImplCopyWithImpl<_$ResistanceSetEntityImpl>(
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
    required TResult Function(BodyWeightSetEntity value) bodyWeight,
    required TResult Function(ResistanceSetEntity value) resistance,
    required TResult Function(CardioSetEntity value) cardio,
  }) {
    return resistance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BodyWeightSetEntity value)? bodyWeight,
    TResult? Function(ResistanceSetEntity value)? resistance,
    TResult? Function(CardioSetEntity value)? cardio,
  }) {
    return resistance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BodyWeightSetEntity value)? bodyWeight,
    TResult Function(ResistanceSetEntity value)? resistance,
    TResult Function(CardioSetEntity value)? cardio,
    required TResult orElse(),
  }) {
    if (resistance != null) {
      return resistance(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResistanceSetEntityImplToJson(
      this,
    );
  }
}

abstract class ResistanceSetEntity implements ExerciseSetEntity {
  const factory ResistanceSetEntity(
          {required final int number,
          required final int reps,
          required final double weight,
          @NullableDurationConverter() final Duration? duration}) =
      _$ResistanceSetEntityImpl;

  factory ResistanceSetEntity.fromJson(Map<String, dynamic> json) =
      _$ResistanceSetEntityImpl.fromJson;

  @override
  int get number;
  int get reps;
  double get weight;
  @override
  @NullableDurationConverter()
  Duration? get duration;
  @override
  @JsonKey(ignore: true)
  _$$ResistanceSetEntityImplCopyWith<_$ResistanceSetEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CardioSetEntityImplCopyWith<$Res>
    implements $ExerciseSetEntityCopyWith<$Res> {
  factory _$$CardioSetEntityImplCopyWith(_$CardioSetEntityImpl value,
          $Res Function(_$CardioSetEntityImpl) then) =
      __$$CardioSetEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number, double distance, @DurationConverter() Duration duration});
}

/// @nodoc
class __$$CardioSetEntityImplCopyWithImpl<$Res>
    extends _$ExerciseSetEntityCopyWithImpl<$Res, _$CardioSetEntityImpl>
    implements _$$CardioSetEntityImplCopyWith<$Res> {
  __$$CardioSetEntityImplCopyWithImpl(
      _$CardioSetEntityImpl _value, $Res Function(_$CardioSetEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? distance = null,
    Object? duration = null,
  }) {
    return _then(_$CardioSetEntityImpl(
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
class _$CardioSetEntityImpl implements CardioSetEntity {
  const _$CardioSetEntityImpl(
      {required this.number,
      required this.distance,
      @DurationConverter() required this.duration,
      final String? $type})
      : $type = $type ?? 'cardio';

  factory _$CardioSetEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardioSetEntityImplFromJson(json);

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
    return 'ExerciseSetEntity.cardio(number: $number, distance: $distance, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardioSetEntityImpl &&
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
  _$$CardioSetEntityImplCopyWith<_$CardioSetEntityImpl> get copyWith =>
      __$$CardioSetEntityImplCopyWithImpl<_$CardioSetEntityImpl>(
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
    required TResult Function(BodyWeightSetEntity value) bodyWeight,
    required TResult Function(ResistanceSetEntity value) resistance,
    required TResult Function(CardioSetEntity value) cardio,
  }) {
    return cardio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BodyWeightSetEntity value)? bodyWeight,
    TResult? Function(ResistanceSetEntity value)? resistance,
    TResult? Function(CardioSetEntity value)? cardio,
  }) {
    return cardio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BodyWeightSetEntity value)? bodyWeight,
    TResult Function(ResistanceSetEntity value)? resistance,
    TResult Function(CardioSetEntity value)? cardio,
    required TResult orElse(),
  }) {
    if (cardio != null) {
      return cardio(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CardioSetEntityImplToJson(
      this,
    );
  }
}

abstract class CardioSetEntity implements ExerciseSetEntity {
  const factory CardioSetEntity(
          {required final int number,
          required final double distance,
          @DurationConverter() required final Duration duration}) =
      _$CardioSetEntityImpl;

  factory CardioSetEntity.fromJson(Map<String, dynamic> json) =
      _$CardioSetEntityImpl.fromJson;

  @override
  int get number;
  double get distance;
  @override
  @DurationConverter()
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$CardioSetEntityImplCopyWith<_$CardioSetEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_mode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameMode {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get iconUrl => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;
  GameModeType get type => throw _privateConstructorUsedError;

  /// Create a copy of GameMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameModeCopyWith<GameMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameModeCopyWith<$Res> {
  factory $GameModeCopyWith(GameMode value, $Res Function(GameMode) then) =
      _$GameModeCopyWithImpl<$Res, GameMode>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String iconUrl,
      bool isEnabled,
      GameModeType type});
}

/// @nodoc
class _$GameModeCopyWithImpl<$Res, $Val extends GameMode>
    implements $GameModeCopyWith<$Res> {
  _$GameModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? iconUrl = null,
    Object? isEnabled = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GameModeType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameModeImplCopyWith<$Res>
    implements $GameModeCopyWith<$Res> {
  factory _$$GameModeImplCopyWith(
          _$GameModeImpl value, $Res Function(_$GameModeImpl) then) =
      __$$GameModeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String iconUrl,
      bool isEnabled,
      GameModeType type});
}

/// @nodoc
class __$$GameModeImplCopyWithImpl<$Res>
    extends _$GameModeCopyWithImpl<$Res, _$GameModeImpl>
    implements _$$GameModeImplCopyWith<$Res> {
  __$$GameModeImplCopyWithImpl(
      _$GameModeImpl _value, $Res Function(_$GameModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? iconUrl = null,
    Object? isEnabled = null,
    Object? type = null,
  }) {
    return _then(_$GameModeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GameModeType,
    ));
  }
}

/// @nodoc

class _$GameModeImpl implements _GameMode {
  const _$GameModeImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.iconUrl,
      required this.isEnabled,
      required this.type});

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String iconUrl;
  @override
  final bool isEnabled;
  @override
  final GameModeType type;

  @override
  String toString() {
    return 'GameMode(id: $id, title: $title, description: $description, iconUrl: $iconUrl, isEnabled: $isEnabled, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameModeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, description, iconUrl, isEnabled, type);

  /// Create a copy of GameMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameModeImplCopyWith<_$GameModeImpl> get copyWith =>
      __$$GameModeImplCopyWithImpl<_$GameModeImpl>(this, _$identity);
}

abstract class _GameMode implements GameMode {
  const factory _GameMode(
      {required final String id,
      required final String title,
      required final String description,
      required final String iconUrl,
      required final bool isEnabled,
      required final GameModeType type}) = _$GameModeImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get iconUrl;
  @override
  bool get isEnabled;
  @override
  GameModeType get type;

  /// Create a copy of GameMode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameModeImplCopyWith<_$GameModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

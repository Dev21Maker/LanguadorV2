// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AuthCredentials credentials) signInWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signOut,
    required TResult Function() continueAsGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthCredentials credentials)? signInWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signOut,
    TResult? Function()? continueAsGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthCredentials credentials)? signInWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signOut,
    TResult Function()? continueAsGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ContinueAsGuest value) continueAsGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_ContinueAsGuest value)? continueAsGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ContinueAsGuest value)? continueAsGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AuthCredentials credentials) signInWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signOut,
    required TResult Function() continueAsGuest,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthCredentials credentials)? signInWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signOut,
    TResult? Function()? continueAsGuest,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthCredentials credentials)? signInWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signOut,
    TResult Function()? continueAsGuest,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ContinueAsGuest value) continueAsGuest,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_ContinueAsGuest value)? continueAsGuest,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ContinueAsGuest value)? continueAsGuest,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SignInWithEmailImplCopyWith<$Res> {
  factory _$$SignInWithEmailImplCopyWith(_$SignInWithEmailImpl value,
          $Res Function(_$SignInWithEmailImpl) then) =
      __$$SignInWithEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthCredentials credentials});

  $AuthCredentialsCopyWith<$Res> get credentials;
}

/// @nodoc
class __$$SignInWithEmailImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithEmailImpl>
    implements _$$SignInWithEmailImplCopyWith<$Res> {
  __$$SignInWithEmailImplCopyWithImpl(
      _$SignInWithEmailImpl _value, $Res Function(_$SignInWithEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentials = null,
  }) {
    return _then(_$SignInWithEmailImpl(
      null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as AuthCredentials,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthCredentialsCopyWith<$Res> get credentials {
    return $AuthCredentialsCopyWith<$Res>(_value.credentials, (value) {
      return _then(_value.copyWith(credentials: value));
    });
  }
}

/// @nodoc

class _$SignInWithEmailImpl implements _SignInWithEmail {
  const _$SignInWithEmailImpl(this.credentials);

  @override
  final AuthCredentials credentials;

  @override
  String toString() {
    return 'AuthEvent.signInWithEmail(credentials: $credentials)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithEmailImpl &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials));
  }

  @override
  int get hashCode => Object.hash(runtimeType, credentials);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInWithEmailImplCopyWith<_$SignInWithEmailImpl> get copyWith =>
      __$$SignInWithEmailImplCopyWithImpl<_$SignInWithEmailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AuthCredentials credentials) signInWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signOut,
    required TResult Function() continueAsGuest,
  }) {
    return signInWithEmail(credentials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthCredentials credentials)? signInWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signOut,
    TResult? Function()? continueAsGuest,
  }) {
    return signInWithEmail?.call(credentials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthCredentials credentials)? signInWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signOut,
    TResult Function()? continueAsGuest,
    required TResult orElse(),
  }) {
    if (signInWithEmail != null) {
      return signInWithEmail(credentials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ContinueAsGuest value) continueAsGuest,
  }) {
    return signInWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_ContinueAsGuest value)? continueAsGuest,
  }) {
    return signInWithEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ContinueAsGuest value)? continueAsGuest,
    required TResult orElse(),
  }) {
    if (signInWithEmail != null) {
      return signInWithEmail(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmail implements AuthEvent {
  const factory _SignInWithEmail(final AuthCredentials credentials) =
      _$SignInWithEmailImpl;

  AuthCredentials get credentials;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInWithEmailImplCopyWith<_$SignInWithEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInWithGoogleImplCopyWith<$Res> {
  factory _$$SignInWithGoogleImplCopyWith(_$SignInWithGoogleImpl value,
          $Res Function(_$SignInWithGoogleImpl) then) =
      __$$SignInWithGoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithGoogleImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithGoogleImpl>
    implements _$$SignInWithGoogleImplCopyWith<$Res> {
  __$$SignInWithGoogleImplCopyWithImpl(_$SignInWithGoogleImpl _value,
      $Res Function(_$SignInWithGoogleImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInWithGoogleImpl implements _SignInWithGoogle {
  const _$SignInWithGoogleImpl();

  @override
  String toString() {
    return 'AuthEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInWithGoogleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AuthCredentials credentials) signInWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signOut,
    required TResult Function() continueAsGuest,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthCredentials credentials)? signInWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signOut,
    TResult? Function()? continueAsGuest,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthCredentials credentials)? signInWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signOut,
    TResult Function()? continueAsGuest,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ContinueAsGuest value) continueAsGuest,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_ContinueAsGuest value)? continueAsGuest,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ContinueAsGuest value)? continueAsGuest,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogle implements AuthEvent {
  const factory _SignInWithGoogle() = _$SignInWithGoogleImpl;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignOutImpl implements _SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AuthCredentials credentials) signInWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signOut,
    required TResult Function() continueAsGuest,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthCredentials credentials)? signInWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signOut,
    TResult? Function()? continueAsGuest,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthCredentials credentials)? signInWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signOut,
    TResult Function()? continueAsGuest,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ContinueAsGuest value) continueAsGuest,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_ContinueAsGuest value)? continueAsGuest,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ContinueAsGuest value)? continueAsGuest,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  const factory _SignOut() = _$SignOutImpl;
}

/// @nodoc
abstract class _$$ContinueAsGuestImplCopyWith<$Res> {
  factory _$$ContinueAsGuestImplCopyWith(_$ContinueAsGuestImpl value,
          $Res Function(_$ContinueAsGuestImpl) then) =
      __$$ContinueAsGuestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContinueAsGuestImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ContinueAsGuestImpl>
    implements _$$ContinueAsGuestImplCopyWith<$Res> {
  __$$ContinueAsGuestImplCopyWithImpl(
      _$ContinueAsGuestImpl _value, $Res Function(_$ContinueAsGuestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ContinueAsGuestImpl implements _ContinueAsGuest {
  const _$ContinueAsGuestImpl();

  @override
  String toString() {
    return 'AuthEvent.continueAsGuest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ContinueAsGuestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AuthCredentials credentials) signInWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signOut,
    required TResult Function() continueAsGuest,
  }) {
    return continueAsGuest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthCredentials credentials)? signInWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signOut,
    TResult? Function()? continueAsGuest,
  }) {
    return continueAsGuest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthCredentials credentials)? signInWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signOut,
    TResult Function()? continueAsGuest,
    required TResult orElse(),
  }) {
    if (continueAsGuest != null) {
      return continueAsGuest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ContinueAsGuest value) continueAsGuest,
  }) {
    return continueAsGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_ContinueAsGuest value)? continueAsGuest,
  }) {
    return continueAsGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ContinueAsGuest value)? continueAsGuest,
    required TResult orElse(),
  }) {
    if (continueAsGuest != null) {
      return continueAsGuest(this);
    }
    return orElse();
  }
}

abstract class _ContinueAsGuest implements AuthEvent {
  const factory _ContinueAsGuest() = _$ContinueAsGuestImpl;
}

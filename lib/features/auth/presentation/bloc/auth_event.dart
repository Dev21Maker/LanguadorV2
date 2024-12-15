part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.signInWithEmail(AuthCredentials credentials) = _SignInWithEmail;
  const factory AuthEvent.signInWithGoogle() = _SignInWithGoogle;
  const factory AuthEvent.signOut() = _SignOut;
  const factory AuthEvent.continueAsGuest() = _ContinueAsGuest;
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../domain/models/auth_state.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  AuthBloc() : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(const AuthState.loading());
          final user = _auth.currentUser;
          if (user != null) {
            emit(AuthState.authenticated(user));
          } else {
            emit(const AuthState.unauthenticated());
          }
        },
        signInWithEmail: (AuthCredentials credentials) async {
          emit(const AuthState.loading());
          try {
            final userCredential = await _auth.signInWithEmailAndPassword(
              email: credentials.email,
              password: credentials.password,
            );
            if (userCredential.user != null) {
              emit(AuthState.authenticated(userCredential.user!));
            } else {
              emit(const AuthState.error('Failed to sign in'));
            }
          } catch (e) {
            emit(AuthState.error(e.toString()));
          }
        },
        signInWithGoogle: () async {
          emit(const AuthState.loading());
          try {
            final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
            if (googleUser == null) {
              emit(const AuthState.unauthenticated());
              return;
            }

            final GoogleSignInAuthentication googleAuth =
                await googleUser.authentication;
            final credential = GoogleAuthProvider.credential(
              accessToken: googleAuth.accessToken,
              idToken: googleAuth.idToken,
            );

            final userCredential =
                await FirebaseAuth.instance.signInWithCredential(credential);
            if (userCredential.user != null) {
              emit(AuthState.authenticated(userCredential.user!));
            } else {
              emit(const AuthState.error('Failed to sign in with Google'));
            }
          } catch (e) {
            emit(AuthState.error(e.toString()));
          }
        },
        signOut: () async {
          emit(const AuthState.loading());
          try {
            await _auth.signOut();
            await _googleSignIn.signOut();
            emit(const AuthState.unauthenticated());
          } catch (e) {
            emit(AuthState.error(e.toString()));
          }
        },
        continueAsGuest: () async {
          emit(const AuthState.loading());
          try {
            final userCredential = await _auth.signInAnonymously();
            if (userCredential.user != null) {
              emit(AuthState.authenticated(userCredential.user!));
            } else {
              emit(const AuthState.error('Failed to sign in as guest'));
            }
          } catch (e) {
            emit(AuthState.error(e.toString()));
          }
        },
      );
    });
  }
}

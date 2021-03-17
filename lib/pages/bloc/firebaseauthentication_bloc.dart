import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:message_app/pages/firebase/firebase_connection.dart';

part 'firebaseauthentication_event.dart';
part 'firebaseauthentication_state.dart';

class FirebaseauthenticationBloc
    extends Bloc<FirebaseauthenticationEvent, FirebaseauthenticationState> {
  FirebaseauthenticationBloc() : super(FirebaseauthenticationInitial());
  FirebaseConnection instance = FirebaseConnection.instance;
  @override
  Stream<FirebaseauthenticationState> mapEventToState(
    FirebaseauthenticationEvent event,
  ) async* {
    if (event is FirebaseauthenticationCreateEvent) {
      yield FirebaseauthenticationCreating();
      try {
        User user = await instance.createUser(
            email: event.email, password: event.password);
        yield FirebaseauthenticationCreatingSuccesfull(user);
      } catch (e) {
        debugPrint(e.toString());
        yield FirebaseauthenticationErrorState(e);
      }
    }
  }
}

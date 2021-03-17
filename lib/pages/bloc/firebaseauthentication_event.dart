part of 'firebaseauthentication_bloc.dart';

abstract class FirebaseauthenticationEvent extends Equatable {
  const FirebaseauthenticationEvent();

  @override
  List<Object> get props => [];
}

class FirebaseauthenticationLoginEvent extends FirebaseauthenticationEvent {}

class FirebaseauthenticationCreateEvent extends FirebaseauthenticationEvent {
  final String email, password;

  FirebaseauthenticationCreateEvent(this.email, this.password);
}

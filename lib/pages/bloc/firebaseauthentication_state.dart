part of 'firebaseauthentication_bloc.dart';

abstract class FirebaseauthenticationState extends Equatable {
  const FirebaseauthenticationState();

  @override
  List<Object> get props => [];
}

class FirebaseauthenticationInitial extends FirebaseauthenticationState {}

class FirebaseauthenticationCreating extends FirebaseauthenticationState {}

class FirebaseauthenticationCreatingSuccesfull
    extends FirebaseauthenticationState {
  final User user;

  FirebaseauthenticationCreatingSuccesfull(this.user);
}

class FirebaseauthenticationLoging extends FirebaseauthenticationState {}

class FirebaseauthenticationLogingSuccesfull
    extends FirebaseauthenticationState {}

class FirebaseauthenticationErrorState extends FirebaseauthenticationState {
  final dynamic message;

  FirebaseauthenticationErrorState(this.message);
}

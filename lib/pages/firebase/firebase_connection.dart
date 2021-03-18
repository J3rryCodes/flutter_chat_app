import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseConnection {
  static final FirebaseConnection instance = FirebaseConnection._constructor();
  FirebaseAuth _auth;
  FirebaseConnection._constructor() {
    FirebaseApp secondaryApp = Firebase.app();
    _auth = FirebaseAuth.instanceFor(app: secondaryApp);
  }

  Future<User> createUser({String email, String password}) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential.user;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<User> loginUser({String email, String password}) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential.user;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future logoutUser() async {
    await _auth.signOut();
  }
}

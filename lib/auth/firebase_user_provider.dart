import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CarekitFirebaseUser {
  CarekitFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CarekitFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CarekitFirebaseUser> carekitFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CarekitFirebaseUser>(
      (user) {
        currentUser = CarekitFirebaseUser(user);
        return currentUser!;
      },
    );

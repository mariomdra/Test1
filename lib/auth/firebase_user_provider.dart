import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class StartupIndexFirebaseUser {
  StartupIndexFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

StartupIndexFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<StartupIndexFirebaseUser> startupIndexFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<StartupIndexFirebaseUser>(
            (user) => currentUser = StartupIndexFirebaseUser(user));

import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class IcervicaisAppFirebaseUser {
  IcervicaisAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

IcervicaisAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<IcervicaisAppFirebaseUser> icervicaisAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<IcervicaisAppFirebaseUser>(
      (user) {
        currentUser = IcervicaisAppFirebaseUser(user);
        return currentUser!;
      },
    );

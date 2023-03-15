import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CorpsCatchFirebaseUser {
  CorpsCatchFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CorpsCatchFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CorpsCatchFirebaseUser> corpsCatchFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CorpsCatchFirebaseUser>(
      (user) {
        currentUser = CorpsCatchFirebaseUser(user);
        return currentUser!;
      },
    );

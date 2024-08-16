import 'package:firebase_auth/firebase_auth.dart';

extension IsLoggedIn on FirebaseAuth {
  bool isLoggedIn() {
    return currentUser != null;
  }
}

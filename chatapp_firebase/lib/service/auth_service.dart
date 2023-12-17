import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

//login function

//register function
  Future registeUserrWithEmailandPassword(
      String fullName, String email, String password) async {
    //in order the catch all the errors given by the firebase
    try {} on FirebaseAuthException catch (e) {}
  }

//sign out function
}

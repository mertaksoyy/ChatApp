import 'package:chatapp_firebase/service/database_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

//login function

//register function
  Future registeUserrWithEmailandPassword(
      String fullName, String email, String password) async {
    //in order the catch all the errors given by the firebase
    //this is a class for handling all the errors ==>FirebaseAuthException
    try {
      User user = (await firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user!;

      if (user != null) {
        //call our database service to update the user data
        DatabaseService(uid: user.uid);
        return true;
      }
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

//sign out function
}

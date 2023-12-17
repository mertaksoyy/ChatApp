import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String? uid;
  DatabaseService({this.uid});

  //reference for our collections
  //if this exists then we will be going this collection if dont exists firebase
  //firestore will automatically collection for us
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("users");
  //for the group collection
  final CollectionReference groupCollection =
      FirebaseFirestore.instance.collection("groups");

  //updating the user data
  Future updateUserData(String fullName, String email) async {
    return await userCollection.doc(uid).set({
      "fullName": fullName,
      "email": email,
      "groups": [],
      "uid": uid,
      "profilePic": "",
    });
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


void addUser(User user) {
  FirebaseFirestore db = FirebaseFirestore.instance;

  db.collection('users').add(<String, dynamic> {
    'uid': user.uid,
    'email': user.email,
    'name': user.displayName,
  });
}

void addAccount(String bank, String accNo, User user) {
  FirebaseFirestore db = FirebaseFirestore.instance;
  db.collection('users').doc(user.uid).update({
    "accounts": FieldValue.arrayUnion([{
      'bank': bank,
      'accNo': accNo
    }])
  });
}
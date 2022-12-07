import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


void addUser(User user) {
  FirebaseFirestore db = FirebaseFirestore.instance;

  db.collection('users').doc(user.uid).set(<String, dynamic> {
    'email': user.email,
    'name': user.displayName,
  });
}

void addAccount(String bank, String accNo, User user) async {
  FirebaseFirestore db = FirebaseFirestore.instance;
  // var docref = await db.collection('users').where('uid', isEqualTo: user.uid).get();
  db.collection('users').doc(user.uid).update({
    "accounts": FieldValue.arrayUnion([{
      'bank': bank,
      'accNo': accNo
    }])
  }).then((value) => print('Success!'));
}
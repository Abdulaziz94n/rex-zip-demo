// import 'package:cloud_firestore/cloud_firestore.dart';

// mixin FirestoreConverter {
//   AppUser appUserFromFirebase(DocumentSnapshot snapshot) {
//     return AppUser(
//       id: snapshot['id'],
//       userName: snapshot['userName'],
//       //  role: UserRole.fromString(snapshot['role']),
//       phone: snapshot['phone'],
//       email: snapshot['email'],
//     );
//   }

//   List<AppUser> appUsersListFromFirebase(QuerySnapshot snapshot) {
//     return snapshot.docs.map((e) => appUserFromFirebase(e)).toList();
//   }
// }

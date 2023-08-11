// import 'package:cloud_firestore/cloud_firestore.dart';

// abstract class FirestoreCrudRepo<T> {
//   CollectionReference<T> get collectionRef;

//   Stream<List<T>> getAll() {
//     return collectionRef
//         .snapshots()
//         .map((event) => event.docs.map((e) => e.data()).toList());
//   }

//   Stream<List<T>> getWhere({required Query<T> query}) {
//     return query
//         .snapshots()
//         .map((event) => event.docs.map((e) => e.data()).toList());
//   }

//   Stream<T?> getById(String id) {
//     return collectionRef.doc(id).snapshots().map((event) => event.data());
//   }

//   Future<void> edit({
//     required String id,
//     required T oldData,
//     required T newData,
//   }) async {
//     await collectionRef.doc(id).set(newData, SetOptions(merge: true));
//   }

//   Future<void> add({required T data, required String id}) async {
//     await collectionRef.doc(id).set(data);
//   }

//   Future<void> delete(String id) async {
//     await collectionRef.doc(id).delete();
//   }
// }

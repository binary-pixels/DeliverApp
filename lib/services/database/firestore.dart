import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // get collection of orders
  final CollectionReference order =
      FirebaseFirestore.instance.collection('orders');

  // save order to db
  Future<void> saveOrderToDatabase(String receipt) async {
    await order.add({
      'date': DateTime.now(),
      'order': receipt,
      // add more fields as necessary.
    });
  }
}

import 'package:flutter/material.dart';

import '../components/my_receipt.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery in progress.."),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          MyRecipt(),
        ],
      ),
    );
  }
}

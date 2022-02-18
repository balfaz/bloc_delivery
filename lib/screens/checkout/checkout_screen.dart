import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Location')),
      body: ElevatedButton(
        child: Text('Checkout'),
        onPressed: () {
          Navigator.pushNamed(context, 'home');
        },
      ),
    );
  }
}

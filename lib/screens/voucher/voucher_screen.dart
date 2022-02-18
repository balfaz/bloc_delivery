import 'package:flutter/material.dart';

class VoucherScreen extends StatelessWidget {
  const VoucherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Location')),
      body: ElevatedButton(
        child: Text('Voucher'),
        onPressed: () {
          Navigator.pushNamed(context, 'home');
        },
      ),
    );
  }
}

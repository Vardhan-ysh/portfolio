import 'package:flutter/material.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile View'),
      ),
      body: const Center(
        child: Text(
          'This is the mobile view placeholder',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

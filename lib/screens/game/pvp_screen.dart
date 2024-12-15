import 'package:flutter/material.dart';

class PvPScreen extends StatelessWidget {
  const PvPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PvP Battle'),
      ),
      body: const Center(
        child: Text('PvP Battle Screen'),
      ),
    );
  }
}

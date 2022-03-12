import 'package:flutter/material.dart';

class ConfigPage extends StatelessWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Config")),
      body: const Center(
        child: Text(
          "Config page",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../models/product.dart';

class SettingsPage extends StatelessWidget {
  // Requiring the list of todos.
  const SettingsPage({super.key, required this.todos});

  final List<Product> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('设置'),
      ),
      //passing in the ListView.builder
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].name),
          );
        },
      ),
    );
  }
}

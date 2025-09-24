import 'package:flutter/material.dart';

class FabWidget extends StatelessWidget {
  const FabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("FAB Example")),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Tombol FAB ditekan!")),
              );
            },
            child: const Icon(Icons.thumb_up),
            backgroundColor: Colors.pink,
          ),
        ),
        body: const Center(
          child: Text("Halo ini contoh Floating Action Button"),
        ),
      ),
    );
  }
}

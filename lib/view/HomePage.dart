import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget{
  const HomePage({super.key});

  @override
  Widget build(context, WidgetRef ref){
    return Scaffold(
      appBar: AppBar(
        title: const Text("アダム"),
      ),
      body: const Center(child: Text("ok")),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// We create a "provider", which will store a value (here "Hello world").
// By using a provider, this allows us to mock/override the value exposed.
final helloWorldProvider = Provider((_) => 'Hello world');

// void main() {
//   runApp(
//     // For widgets to be able to read providers, we need to wrap the entire
//     // application in a "ProviderScope" widget.
//     // This is where the state of our providers will be stored.
//     ProviderScope(
//       child: MyApp(),
//     ),
//   );
// }

// Note: MyApp is a HookConsumerWidget, from hooks_riverpod.
class MyApp extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch(helloWorldProvider);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Example')),
        body: Center(
          child: Text(value),
        ),
      ),
    );
  }
}
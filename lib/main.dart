import 'package:CounterTestt/counter/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:wear/wear.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AmbientMode(
        child: const CounterPage(),
        builder: (context, mode, child) {
          return MaterialApp(
            //title: 'Flutter Demo',
            theme: ThemeData(
                visualDensity: VisualDensity.compact,
                useMaterial3: true,
                colorScheme: mode == WearMode.active
                    ? const ColorScheme.dark(primary: Color.fromARGB(255, 253, 253, 253))
                    : const ColorScheme.dark(
                        primary: Colors.white24,
                        background: Colors.white10,
                        onSurface: Colors.white10)),
            home: child,
          );
        });
  }
}

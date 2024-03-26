import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorSchema = ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
    );
    final colorSchemaDart = ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      brightness: Brightness.dark,
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
        colorScheme: colorSchema,
      ),
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: colorSchemaDart,
      ),
      themeMode: ThemeMode.system,
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: const Center(
        child: Text("Página Home"),
      ),
    );
  }
}

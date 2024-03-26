import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tarefas_clean_architecture/core/inject/inject.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/presentation/ui/pages/tarefa_page.dart';
import 'firebase_options.dart';

void main() async {
  Inject.init();
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
      home: TarefaPage(),
    );
  }
}

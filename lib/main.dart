import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tarefas_clean_architecture/core/inject/inject.dart';
import 'package:tarefas_clean_architecture/home_page.dart';
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
      seedColor: Colors.black,
    );
    final colorSchemaDart = ColorScheme.fromSeed(
      seedColor: Colors.black,
      brightness: Brightness.dark,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale("pt", "BR"),
      ],
      theme: ThemeData().copyWith(
        colorScheme: colorSchema,
      ),
      darkTheme: ThemeData.dark().copyWith(
        // appBarTheme
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 27, 26, 25),
        ),
        // navigationRailTheme
        navigationRailTheme: const NavigationRailThemeData().copyWith(
          minWidth: 70,
          groupAlignment: -1,
          minExtendedWidth: 200,
          backgroundColor: const Color.fromARGB(255, 37, 36, 35),
          indicatorColor: const Color.fromARGB(255, 59, 58, 57),
        ),
        // textTheme
        scaffoldBackgroundColor: const Color.fromARGB(255, 17, 16, 15),
        colorScheme: colorSchemaDart,
      ),
      themeMode: ThemeMode.dark,
      home: const HomePage(),
    );
  }
}

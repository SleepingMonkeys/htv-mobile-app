import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hackdavalley/auth_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/auth',
      routes: {
        '/auth': (context) => AuthPage(),
        // Add other routes for different app screens
      },
    );

  }
}


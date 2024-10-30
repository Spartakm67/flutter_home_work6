import 'package:flutter/material.dart';
import 'package:flutter_home_work6/screens/home_screen.dart';
import 'package:flutter_home_work6/screens/profile_screen.dart';
import 'package:flutter_home_work6/screens/contacts_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Home Work6',
      theme: ThemeData(primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        // '/profile': (context) => const ProfileScreen(),
        // '/contacts': (context) => const ContactsScreen(),
      }
    );
  }
}


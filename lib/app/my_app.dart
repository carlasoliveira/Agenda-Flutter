import 'package:flutter/material.dart';
import 'package:projeto_agenda/app/view/contact_form.dart';
import 'package:projeto_agenda/app/view/contact_list.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const HOME = '/';
  static const FORM = 'form';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda - Curso Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        HOME: (context) => ContactList(),
        FORM: (context) => ContactForm(),
      },
    );
  }
}
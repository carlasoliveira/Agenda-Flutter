import 'package:flutter/material.dart';
import 'package:projeto_agenda/app/my_app.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de contatos'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
              Navigator.of(context).pushNamed(MyApp.FORM);
            },
          ),
        ],
      ),
      body: ListView(),
    );
  }
}
import 'package:flutter/material.dart';
class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language'),
      ),
      body: ListView(
        children: [
          RadioListTile(
            title: const Text('English'),
            value: 'en',
            groupValue: 'en', // Change this to your actual selected language
            onChanged: (value) {
              // Handle language change here
            },
          ),
          RadioListTile(
            title: const Text('Spanish'),
            value: 'es',
            groupValue: 'en', // Change this to your actual selected language
            onChanged: (value) {
              // Handle language change here
            },
          ),
          RadioListTile(
            title: const Text('Germany'),
            value: 'es',
            groupValue: 'en', // Change this to your actual selected language
            onChanged: (value) {
              // Handle language change here
            },
          ),
          // Add more languages as needed
        ],
      ),
    );
  }
}

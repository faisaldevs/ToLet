import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RadioButtonDemo(),
    );
  }
}

class RadioButtonDemo extends StatefulWidget {
  @override
  _RadioButtonDemoState createState() => _RadioButtonDemoState();
}

class _RadioButtonDemoState extends State<RadioButtonDemo> {
  String _selectedOption = 'Family';

  void _handleRadioValueChange(String? value) {
    setState(() {
      _selectedOption = value!;
      print(_selectedOption); // Print the selected button name
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button Demo'),
      ),
      body: Column(
        children: <Widget>[
          RadioListTile<String>(
            title: const Text('Family'),
            value: 'Family',
            groupValue: _selectedOption,
            onChanged: _handleRadioValueChange,
          ),
          RadioListTile<String>(
            title: const Text('Bachelor'),
            value: 'Bachelor',
            groupValue: _selectedOption,
            onChanged: _handleRadioValueChange,
          ),
          RadioListTile<String>(
            title: const Text('Office'),
            value: 'Office',
            groupValue: _selectedOption,
            onChanged: _handleRadioValueChange,
          ),
          RadioListTile<String>(
            title: const Text('Shop'),
            value: 'Shop',
            groupValue: _selectedOption,
            onChanged: _handleRadioValueChange,
          ),
          RadioListTile<String>(
            title: const Text('Sublet'),
            value: 'Sublet',
            groupValue: _selectedOption,
            onChanged: _handleRadioValueChange,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomizedTextFormFieldOwn extends StatefulWidget {
  static const String id = "CustomizedTextFormFieldOwn";
  const CustomizedTextFormFieldOwn({Key? key}) : super(key: key);

  @override
  State<CustomizedTextFormFieldOwn> createState() =>
      _CustomizedTextFormFieldOwnState();
}

class _CustomizedTextFormFieldOwnState
    extends State<CustomizedTextFormFieldOwn> {
  final _formKey = GlobalKey<FormState>();
  String? _email, _password;

  void _doSignIn() {
    if (_formKey.currentState?.validate()  == true ){
      _formKey.currentState?.save();
      print("Welcome");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CustomizedTextFormFieldOwn"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextFormField(
                decoration: const InputDecoration(labelText: "Email"),
                validator: (input) => input?.contains("@") == false
                    ? "Please enter a valid email"
                    : null,
                onSaved: (input) => _email = input,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextFormField(
                decoration: const InputDecoration(labelText: "Password"),
                validator: (input) =>
                    input?.isNotEmpty == false || input!.length < 6
                        ? "Must be at least 6 characters"
                        : null,
                onSaved: (input) => _password = input,
              ),
            ),
            MaterialButton(
              onPressed: () {
                _doSignIn();
              },
              color: Colors.purple,
              child: Text("Sign in"),
            )
          ],
        ),
      ),
    );
  }
}

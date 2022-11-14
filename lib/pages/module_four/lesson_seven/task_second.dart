import 'package:flutter/material.dart';

class TaskSecondOwn extends StatefulWidget {
  static const String id = "TaskSecondOwn";
  const TaskSecondOwn({Key? key}) : super(key: key);

  @override
  State<TaskSecondOwn> createState() => _TaskSecondOwnState();
}

class _TaskSecondOwnState extends State<TaskSecondOwn> {
  final _formKey = GlobalKey<FormState>();
  String? _email, _password;

  void _doSignIn() {
    if (_formKey.currentState?.validate() == true) {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Instagram",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
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
              padding: const EdgeInsets.only(left: 165, right: 165),
              onPressed: () {
                _doSignIn();
              },
              color: Colors.blue,
              child: const Text(
                "Log in",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      print("Clicked");
                    },
                    child: const Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

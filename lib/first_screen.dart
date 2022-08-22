import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final TextEditingController _personController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
        appBar: AppBar(title:Text("First Screen"),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: InputBorder.none,
                      hintText: "Enter your username",
                      labelText: "Username"),
                  controller: _personController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      border: InputBorder.none,
                      hintText: "Enter your password",
                      labelText: "Password"),
                  controller: _passwordController,
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_personController.text != "" &&
                        _passwordController.text != "") {
                      Navigator.pushNamed(context, '/second');
                  
                    }
                    setState(() {
                                          
                                        });
                    // Navigate to the second screen when tapped.
                  },
                  child: const Text('Register'),
                ),
              )
            ],
          ),
        ));
  }
}


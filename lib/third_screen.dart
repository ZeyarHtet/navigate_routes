
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Text("Welcome",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
            ),
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              backgroundImage: AssetImage("images/itachi.jpg"),
              radius: 100,
            ),

            SizedBox(
              height: 50,
            ),
            Center(
              child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/first');
            // Navigate to the second screen when tapped.
          },
          child: const Text('Login'),
        ),
            )

          ],
        ),
      ),

      
      
      // body: Center(
        
      // ),
    );
  }
}



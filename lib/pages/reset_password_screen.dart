import 'package:flutter/material.dart';
import 'login_screen.dart';

class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Reset Password", style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 30,
            color: Colors.white
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter login or email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => {
                showDialog(
                  context: context,
                  builder: (BuildContext ctx) {
                    return const AlertDialog(
                      title: Text('Message'),
                      content: Text("Password reset link sent"),
                    );
                  },
                )
              },
              child: const Text("Reset Password"),
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.brown
              ),
            ),
            SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back to Login"),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.brown,
                side: BorderSide(color: Colors.brown),
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

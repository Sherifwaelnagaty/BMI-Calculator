import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';


class LoginScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: SingleChildScrollView(
            child: ElevatedButton(
              onPressed: () async {
                try {
                  final userCredential =
                  await FirebaseAuth.instance.signInAnonymously();
                  print("Signed in with temporary account.");
                } on FirebaseAuthException catch (e) {
                  switch (e.code) {
                    case "operation-not-allowed":
                      print("Anonymous auth hasn't been enabled for this project.");
                      break;
                    default:
                      print("Unknown error.");
                  }
                }
             },
              child: Text(
                  "Login As Guest"
              ,style: TextStyle(
                fontSize: 20,
              ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../shared/components/components.dart';
import '../../shared/providers.dart';

class LoginScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    final formKey = ref.read(formKeyProvider);
    bool isPasswordVisible = true;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40.0),
                  defaultFormField(
                    prefix: Icons.account_circle,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return "Username must not be empty";
                      } else if (value.length < 3) {
                        return "Username must be at least 3 characters long";
                      }
                      return null;
                    },
                    type: TextInputType.visiblePassword,
                    Controller: usernameController,
                    Label: 'Username',
                  ),
                  SizedBox(height: 20.0),
                  defaultFormField(
                    suffix: isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    prefix: Icons.lock,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return "Password must not be empty";
                      } else if (value.length < 8) {
                        return "Password must be at least 8 characters in length";
                      }
                      return null;
                    },
                    type: TextInputType.visiblePassword,
                    Controller: passwordController,
                    Label: 'Password',
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        // Handle login logic here
                        // Access form fields using usernameController.text and passwordController.text
                      }
                    },
                    child: Text('Login'),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don\'t have an account?",
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigate to the signup screen
                          // Example: Navigator.of(context).pushNamed('/signup');
                        },
                        child: Text(
                          "Register Now",
                          style: TextStyle(color: Colors.blue[800]),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

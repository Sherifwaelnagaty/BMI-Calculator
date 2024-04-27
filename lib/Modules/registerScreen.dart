import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../shared/components/components.dart';
import '../shared/providers.dart';

class SignupScreen extends ConsumerWidget {
  const SignupScreen();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();
    final formKey = ref.read(formKeyProvider);
    bool isPasswordVisible = true;
    bool isConfirmPasswordVisible = true;

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
                    "SignUp",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  defaultFormField(
                    suffix: isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    prefix: Icons.lock,
                    validate: (value) {
                      if (value.isEmpty) {
                        return "Password must not be empty";
                      } else if (value.length < 8) {
                        return "Password must be at least 8 characters long";
                      }
                      return null;
                    },
                    type: TextInputType.visiblePassword,
                    Controller: passwordController,
                    Label: 'Password',
                  ),
                  SizedBox(height: 20.0),
                  defaultFormField(
                    suffix: isConfirmPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    prefix: Icons.lock,
                    validate: (value) {
                      if (value.isEmpty) {
                        return "Password must not be empty";
                      } else if (value.length < 8) {
                        return "Password must be at least 8 characters long";
                      } else if (value !=
                          confirmPasswordController.text) {
                        return "Password Don't match";
                      }
                      return null;
                    },
                    Label: "Confirm Password*",
                    type: TextInputType.visiblePassword,
                    Controller: confirmPasswordController,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        // Handle signup logic here
                        // Access form fields using usernameController.text, passwordController.text, confirmPasswordController.text
                      }
                    },
                    child: Text("Signup"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import '../shared/components/components.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen();

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var confirmPass;
  bool showPassword = true;
  bool showConfirmPassword = true;

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
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
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                    prefix: Icons.account_circle,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return "UserName must not be empty";
                      }

                      else if (value.length < 3) {
                        return "Username must be at least 3 characters long";
                      }

                      return null;
                    },
                    type: TextInputType.visiblePassword,
                    Controller: usernameController,
                    Label: 'UserName',
                  ),

                  SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                    suffix:
                    showPassword ? Icons.visibility : Icons.visibility_off,
                    prefix: Icons.lock,
                    validate: (value) {
                      confirmPass = value;
                      if (value!.isEmpty) {
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
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                    suffix:
                    showConfirmPassword ? Icons.visibility : Icons.visibility_off,
                    prefix: Icons.lock,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return "Password must not be empty";
                      } else if (value.length < 8) {
                        return "Password must be atleast 8 characters long";
                      }
                      else if (value != confirmPass) {
                        return "Password Don't match";
                      }
                      return null;
                    },
                    Label: "Confirm Password*",
                    type: TextInputType.visiblePassword,
                    Controller: confirmPasswordController,
                  ),
                  ElevatedButton(
                    onPressed: () {  },
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
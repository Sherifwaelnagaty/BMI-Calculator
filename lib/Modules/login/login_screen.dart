import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var formkey =GlobalKey<FormState>();
  bool showPassword=true;
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
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style:TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defaultFormField(
                    prefix: Icons.account_circle,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return "Username must not be empty";
                      }
                      else if (value.length < 3) {
                        return "Username must be at least 3 characters long";
                      }
                      return null;
                    },
                    type: TextInputType.visiblePassword,
                    Controller: usernameController, Label: 'Username',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                    suffix: showPassword?Icons.visibility:Icons.visibility_off,
                    prefix: Icons.lock,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return "Password must not be empty";
                      }else if(value.length < 8){
                        return "Password must be at least 8 characters in length";
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
                  ElevatedButton(
                    onPressed: () {  },
                    child: Text(
                      'Login'
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don\'t have an account?",
                      ),
                      TextButton(
                        onPressed: () {
                          //context.push('/signup');
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
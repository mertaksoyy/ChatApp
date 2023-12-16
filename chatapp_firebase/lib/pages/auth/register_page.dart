import 'dart:core';
import 'package:chatapp_firebase/pages/auth/login_page.dart';
import 'package:chatapp_firebase/pages/home_page.dart';
import 'package:flutter/gestures.dart';

import 'package:chatapp_firebase/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String fullName = "";

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 70),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Groupie",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
              const SizedBox(
                height: 2,
              ),
              const Text(
                "Create your account now to chat and explore",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              const SizedBox(
                height: 3,
              ),
              Image.asset("images/register.png"),
              TextFormField(
                decoration: textInputDecoration.copyWith(
                    labelText: "Full Name",
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Color(0xFFee7b64),
                    )),
                onChanged: (val) {
                  fullName = val;
                },
                validator: (val) {
                  if (val!.isNotEmpty) {
                    return null;
                  }
                  return "Name cannot be empty";
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: textInputDecoration.copyWith(
                  labelText: "Email",
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Color(0xFFee7b64),
                  ),
                ),
                onChanged: (val) {
                  email = val;
                },
                //check the validation
                validator: (val) {
                  return RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(val!)
                      ? null
                      : "Please enter a valid email";
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                decoration: textInputDecoration.copyWith(
                  labelText: "Password",
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color(0xFFee7b64),
                  ),
                ),
                //check the who is entering the email right or not
                validator: (val) {
                  if (val == null || val.length < 6) {
                    return "Password must be longer than 6 character";
                  } else {
                    return null;
                  }
                },
                onChanged: (val) {
                  password = val;
                },
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  onPressed: () {
                    register();
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text.rich(TextSpan(
                  text: "Already have account?",
                  style: const TextStyle(color: Colors.black, fontSize: 15),
                  children: <TextSpan>[
                    TextSpan(
                        text: "Log In",
                        style: const TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            nextScreen(context, LoginPage());
                          })
                  ]))
            ],
          ),
        ),
      ),
    ));
  }

  register() {
    if (formKey.currentState!.validate()) {
      nextScreenPop(context, LoginPage());
    }
  }
}

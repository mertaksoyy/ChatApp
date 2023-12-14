import 'package:chatapp_firebase/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  String email = " ";
  String password = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 80),
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
                height: 10,
              ),
              const Text(
                "Login now to see what they are talking!",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 3,
              ),
              Image.asset("images/login.png"),
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
              SizedBox(
                height: 15,
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
                validator: (val) {
                  if (/*val.length < 6 || val == null*/ val == null ||
                      val.length < 6) {
                    return "Password must be longer than 6 character or can not be empty";
                  } else {
                    return null;
                  }
                },
                onChanged: (val) {
                  password = val;
                },
              )
            ],
          ),
        ),
      ),
    ));
  }
}

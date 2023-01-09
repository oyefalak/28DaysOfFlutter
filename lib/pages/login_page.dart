import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text("Welcome",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(children: [
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter username",
                  labelText: "Username",
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter password",
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Hi Shabbir");
                  },
                  child: Text("Login"),
                  style: TextButton.styleFrom(),
                  ),
            ],),
          )

        ],
      )
    );
  }
}



























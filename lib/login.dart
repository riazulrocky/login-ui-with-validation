import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://img.freepik.com/premium-photo/colorful-image-blue-pink-wave-that-says-blue_1034303-453873.jpg"))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 80),
              child: Text(
                "Welcome Back",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            Container(
              height: 600,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          prefix: Icon(Icons.email),
                          hintText: "Enter your email",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(60))),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefix: Icon(Icons.lock),
                        suffix: IconButton(
                            onPressed: () {}, icon: Icon(Icons.visibility)),
                        hintText: "Enter your password",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(60)),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("Forgot Password?", style: TextStyle(fontSize: 16)),
                    Spacer(),
                    MaterialButton(
                        minWidth: 300,
                        height: 45,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        color: Colors.blue,
                        onPressed: () {},
                        child: Text(
                          "Sign in",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: RichText(
                          text: TextSpan(
                              text: "Don't have an account?",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                              children: <TextSpan>[
                            TextSpan(
                              text: " Signup",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 18),
                            )
                          ])),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

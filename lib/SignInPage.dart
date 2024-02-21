import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';
import 'package:sign_in_button/sign_in_button.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  void _signInWithEmail() {
    // Implement sign in with email logic here
    String email = emailController.text;
    String password = passwordController.text;
    // Do something with email and password
    print('Signing in with email: $email, password: $password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400], // Change background color to blackish
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: Icon(Icons.email),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: passwordController,
                  obscureText: !isPasswordVisible,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        _togglePasswordVisibility();
                      },
                      child: Icon(
                        isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity, // Button width takes the maximum available space
                  child: ElevatedButton(
                    onPressed: () {
                      _signInWithEmail();
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 20), // Adjust the vertical padding as needed
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      backgroundColor: Colors.blueGrey,
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(fontSize: 14, color: Colors.white), // Change text color to white
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Navigate to the registration page
                            // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                            print('Navigate to the registration page');
                          },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SignInButton(
                  Buttons.google,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Google Button Pressed!"),
                        duration: Duration(milliseconds: 400),
                      ),
                    );
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  // Increase button width
                  text: 'Sign in with Google',
                  elevation: 0,
                 // Increase text size
                ),
                SizedBox(height: 20),
                Text(
                  "By registering, you agree to our",
                  style: TextStyle(color: Colors.white), // Change text color to white
                ),
                RichText(
                  text: TextSpan(
                    text: 'Terms of Service and Performance',
                    style: TextStyle(
                      color: Colors.blue, // Changed text color to blue
                      decoration: TextDecoration.underline, // Added underline decoration
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        var url = Uri.parse("https://share.catrob.at/");
                        if (await canLaunch(url.toString())) {
                          await launch(url.toString());
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gbvapp/signup_page.dart'; 
import 'package:gbvapp/myhomepage.dart';
import 'package:gbvapp/components/my_button.dart';
import 'components/my_textfield.dart'; 

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn(BuildContext context) {
    // Sign-in logic goes here
    //  Validate username and password, then navigate to the homepage
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MyHomePage()), // takes you homepage
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView( // Wrapping column with SingleChildScrollView to help scroll when it overflows
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(height: 50),
                Text(
                  'Welcome back to Empower Her!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 25),
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                MyButton(
                  onTap: () => signUserIn(context),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google.png', //  Google image path
                      height: 40,
                    ),
                    SizedBox(width: 25),
                    Image.asset(
                      'assets/images/apple.png', //  Apple image path
                      height: 40,
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()), // signup page
                    );
                  },
                  child: Text('Not a member? Register now'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

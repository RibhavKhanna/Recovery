import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_page/pages/signup.dart';
// ignore: unused_import
import 'package:text_hover/text_hover.dart';

class login extends StatelessWidget {
  login({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),

              // welcome back, you've been missed!
              Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              TextField(  
                      
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Username',  
                      hintText: 'Enter username',  
                    ),  
                  ), 

              // const SizedBox(height: 10),

              // // password textfield
              TextField(  
                      obscureText: true,
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Password',  
                      hintText: 'Enter your password',  
                    ),  
                  ),

              const SizedBox(height: 10),

              // forgot password?
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

              // sign in button
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  FirstPage()),
  );
                  },
                  // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                  style: ElevatedButton.styleFrom(
                      elevation: 7.0,
                      textStyle: const TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                  child: const Text('Login'),
                ),

              const SizedBox(height: 50),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    
                  ],
                ),
              ),

              const SizedBox(height: 50),

             
              

              const SizedBox(height: 50),

              // not a member? register now
              RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                    text: 'Signup',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  signup()),
  );
                        print('Login Text Clicked');
                      }),
            ]),
          ),
            ],
          ),
        ),
      ),
    );
  }
  

}
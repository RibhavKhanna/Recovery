import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_page/pages/login.dart';
// ignore: unused_import
import 'package:text_hover/text_hover.dart';

class signup extends StatelessWidget {
  signup({super.key});

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
                'Let\'s get you a new account!',
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
                      labelText: 'Full Name',  
                      hintText: 'Enter your name',  
                    ),  
                  ), 

              // const SizedBox(height: 10),

              // // password textfield
              TextField(  
                      obscureText: false,
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Roll Number',  
                      hintText: 'Enter your roll number',  
                    ),  
                  ),

              TextField(  
                      obscureText: false,
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Email ID',  
                      hintText: 'Enter your email id',  
                    ),  
                  ),

              TextField(  
                      obscureText: true,
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Password',  
                      hintText: 'Enter your password',  
                    ),  
                  ),

              TextField(  
                      obscureText: true,
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Confirm Password',  
                      hintText: 'Reenter your password',  
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
                  child: const Text('Signup'),
                ),

              

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
                  text: 'Already have an account? ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                    text: 'Login',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  login()),
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
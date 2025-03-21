import 'package:flutter/material.dart';
import 'package:foodly/components/my_button.dart';
import 'package:foodly/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({
    super.key, 
    required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Center(
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: [
             //logo
             Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary
              ),

              const SizedBox(height: 25), 
             
             //message,app slogan 
             Text(
              "Let's create an account for you",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,

                ),
              ),

              const SizedBox(height: 25),
          
            //password textfield

            MyTextfield(
              controller: emailController, 
              hintText: "Email", 
              obscureText: false
              ),

                const SizedBox(height: 10),

            MyTextfield(
              controller: passwordController, 
              hintText: "Password", 
              obscureText: true,
              ),    
             
             // confirm password
            MyTextfield(
              controller: confirmPasswordController, 
              hintText: "Confirm Password", 
              obscureText: true,
              ),
          
               const SizedBox(height: 10),
            
            //sign up button

            MyButton(
              onTap: (){}, 
              text: "Sign Up"
              ),

               const SizedBox(height: 25),
          
            //already have an account? Login here

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,

                  ),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                    "Login here",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    
                    ),
                    ),
                  ),

              ],

            ),
          
            ],
          
          ),
        ),

    );
  }
}
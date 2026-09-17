import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 45),

                // Carrot Logo
                Center(child: Image.asset('images/carrot.png', width: 55)),

                const SizedBox(height: 85),

                // Sign Up
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  'Enter your credentials to continue',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),

                const SizedBox(height: 42),

                // Username
                const Text(
                  'Username',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),

                const SizedBox(height: 10),

                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Afsar Hosser Shuvo',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 17),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffdddddd)),
                    ),
                  ),
                ),

                const SizedBox(height: 35),

                // Email
                const Text(
                  'Email',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),

                const SizedBox(height: 10),

                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'imshuvo97@gmail.com',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                    suffixIcon: const Icon(
                      Icons.check,
                      color: Color(0xFF53B175),
                    ),
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffdddddd)),
                    ),
                  ),
                ),

                const SizedBox(height: 35),

                // Password
                const Text(
                  'Password',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),

                const SizedBox(height: 10),

                TextField(
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                    hintText: '••••••••',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      letterSpacing: 4,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                      icon: Icon(
                        hidePassword
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffdddddd)),
                    ),
                  ),
                ),

                const SizedBox(height: 17),

                // Terms
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      height: 1.7,
                    ),
                    children: [
                      TextSpan(text: 'By continuing you agree to our '),
                      TextSpan(
                        text: 'Terms of Service',
                        style: TextStyle(color: Color(0xFF53B175)),
                      ),
                      TextSpan(text: '\nand '),
                      TextSpan(
                        text: 'Privacy Policy.',
                        style: TextStyle(color: Color(0xFF53B175)),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 28),

                // Sign Up Button
                SizedBox(
                  width: double.infinity,
                  height: 67,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF53B175),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: const Text(
                      'Sing Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Already have account
                Center(
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(fontSize: 14, color: Colors.black),
                      children: [
                        TextSpan(text: 'Already have an account? '),
                        TextSpan(
                          text: 'Signup',
                          style: TextStyle(color: Color(0xFF53B175)),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

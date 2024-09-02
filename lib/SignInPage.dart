import 'package:flutter/material.dart';
import 'package:profix_new/HomePage.dart';
import 'package:profix_new/SignUpPage.dart';
import 'package:profix_new/forgotPasswordPage.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isRememberMeChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCDE8E5),
      appBar: AppBar(
          backgroundColor: const Color(0xFFCDE8E5),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Column(children: [
        Expanded(
            flex: 1,
            child: Container(
              color: const Color(0xFFCDE8E5),
            )),
        Expanded(
            flex: 7,
            child: ClipPath(
                clipper: MyClipper(),
                child: Container(
                    color: const Color(0xFFEEF7FF),
                    child: SingleChildScrollView(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Sign In',
                                style: TextStyle(
                                    color: Color(0xFF4A4B4B),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Email',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF4A4B4B),
                                  )),
                            ],
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: '_______@gmail.com',
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Password',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF4A4B4B),
                                ),
                              ),
                            ],
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: '*********',
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: _isRememberMeChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        _isRememberMeChecked = value ?? false;
                                      });
                                    },
                                    checkColor: Colors.white,
                                    activeColor: Colors.blue,
                                  ),
                                  const Text(
                                    'Remember me',
                                    style: TextStyle(
                                      color: Color(0xFF4A4B4B),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Forgotpasswordpage()));
                              // Add functionality for forgot password here
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Forgot Password?',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Center(
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePage()));
                                  // Add login functionality here
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        255, 122, 165, 160)),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 15),
                                  child: Text(
                                    'LOGIN',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              Expanded(child: Divider()),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  'Sign in with',
                                  style: TextStyle(
                                      color: Color(
                                    (0xFF4A4B4B),
                                  )),
                                ),
                              ),
                              Expanded(child: Divider()),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              const SizedBox(height: 10),
                              // Google Logo
                              SizedBox(
                                width: 25, // Adjust the width as needed
                                height: 25, // Adjust the height as needed
                                child: Image.asset(
                                  'assets/Google.png', // Replace with the path to your Google logo image
                                  fit: BoxFit
                                      .contain, // Ensure the image fits within the specified dimensions
                                ),
                              ),
                              const SizedBox(width: 10),
                              // Facebook Logo
                              SizedBox(
                                width: 20, // Adjust the width as needed
                                height: 20, // Adjust the height as needed
                                child: Image.asset(
                                  'assets/Facebook.PNG', // Replace with the path to your Facebook logo image
                                  fit: BoxFit
                                      .contain, // Ensure the image fits within the specified dimensions
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Don\'t have an account?',
                                style: TextStyle(color: Color(0xFF4A4B4B)),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SignUpPage()));
                                  // Add navigation to signup page here
                                },
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ],
                          )
                        ])))))
      ]),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 80);
    path.lineTo(0, 40); // Start from the bottom of the teal container
    path.quadraticBezierTo(0, 0, 70, 0); // Rounded top left corner
    path.lineTo(size.width, 0); // Line to the top right corner
    path.lineTo(size.width, size.height); // Line to the bottom right corner
    path.lineTo(0, size.height); // Line to the bottom left corner
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

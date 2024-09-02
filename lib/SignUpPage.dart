import 'package:flutter/material.dart';
import 'package:profix_new/HomePage.dart';
// import 'package:home_service/Home_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFCDE8E5),
        appBar: AppBar(
          backgroundColor: const Color(0xFFCDE8E5),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: const Color(0xFFCDE8E5),
              ),
            ),
            Expanded(
                flex: 9,
                child: ClipPath(
                    clipper: MyClipper(),
                    child: Container(
                      color: const Color(0xFFEEF7FF),
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'SignUp',
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
                              children: [Text('Full Name')],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: ('Enter Name'),
                                  hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 15),
                                  filled: true,
                                  fillColor: Colors.grey[300],
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide.none)),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Row(
                              children: [Text('Email')],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: ('Enter email'),
                                  hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 15),
                                  filled: true,
                                  fillColor: Colors.grey[300],
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide.none)),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Row(
                              children: [Text('Password')],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: ('Enter Password'),
                                  hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 15),
                                  filled: true,
                                  fillColor: Colors.grey[300],
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide.none)),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Row(
                              children: [Text('Confirm Password')],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: ('Confirm Password'),
                                  hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 15),
                                  filled: true,
                                  fillColor: Colors.grey[300],
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide.none)),
                            ),
                            const SizedBox(height: 25),
                            Center(
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HomePage()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 122, 165, 160)),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 15),
                                    child: Text(
                                      'SignUp',
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
                                    'Sign Up with',
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
                              height: 15,
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
                                // Google Logo
                                SizedBox(
                                  width: 20, // Adjust the width as needed
                                  height: 20, // Adjust the height as needed
                                  child: Image.asset(
                                    'assets/Facebook.PNG', // Replace with the path to your Google logo image
                                    fit: BoxFit
                                        .contain, // Ensure the image fits within the specified dimensions
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )))
          ],
        ));
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

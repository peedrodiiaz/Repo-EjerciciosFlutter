import 'package:flutter/material.dart';

class Userlogin extends StatelessWidget {
  const Userlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 17, 0),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/path_logo.png'),
            const Text(
              'Beautiful, Private Sharing',
              style: TextStyle(
                color: Color.fromARGB(255, 197, 165, 165),
                fontFamily: 'ComicSans',
              ),
            ),
            const SizedBox(height: 150),
            
            Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 17, 0),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          
            Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 80),
            
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    'By using Path, you agree to Path\'s',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Terms of Use',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      Text(
                        ' and ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Privacy Policy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
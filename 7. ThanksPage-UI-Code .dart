import 'package:flutter/material.dart';
import 'package:flutter_login_app/login.dart';

class ThanksPage extends StatefulWidget {
  const ThanksPage({super.key});

  @override
  State<ThanksPage> createState() => _ThanksPageState();
}

class _ThanksPageState extends State<ThanksPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  mainAxisAlignment: .center,
                  children: [
                    SizedBox(
                      height: height * 0.1,
                      child: Image.asset('assets/successmark.png'),
                    ),

                    SizedBox(height: height * 0.03),
                    Text(
                      'Password Changed!',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: height * 0.015),
                    Text(
                      'Your password has been changed\n                  successfully',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),

                    SizedBox(height: height * 0.02),
                    SizedBox(
                      height: height * 0.065,
                      child: InkWell(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginPage(),
                                ),
                              );
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black87,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Back to Login',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
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

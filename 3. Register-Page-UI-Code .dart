import 'package:flutter/material.dart';
import 'package:flutter_login_app/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: SafeArea(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Container(
                        height: height * 0.045,
                        width: width * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(width: 2, color: Colors.grey),
                        ),

                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            size: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.035),
                      Text(
                        'Hello! Register to Get\nStarted',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1E232C),
                        ),
                      ),

                      SizedBox(height: height * 0.035),
                      SizedBox(
                        height: height * 0.08,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Username is Required !';
                            }
                            return null;
                          },

                          style: TextStyle(fontSize: 18, color: Colors.black),
                          decoration: InputDecoration(
                            labelText: 'Username',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.01),
                      SizedBox(
                        height: height * 0.08,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Email is Required !';
                            }
                            return null;
                          },

                          style: TextStyle(fontSize: 18, color: Colors.black),
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.01),
                      SizedBox(
                        height: height * 0.08,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Password is Required !';
                            }
                            if (value.length < 6) {
                              return 'Password must be at least 6 characters';
                            }
                            return null;
                          },

                          style: TextStyle(fontSize: 18, color: Colors.black),
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.01),
                      SizedBox(
                        height: height * 0.08,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Confirm Password is Required !';
                            }
                            if (value.length < 6) {
                              return 'Password must be at least 6 characters';
                            }
                            return null;
                          },

                          style: TextStyle(fontSize: 18, color: Colors.black),
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.02),
                      SizedBox(
                        height: height * 0.065,
                        child: InkWell(
                          child: ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Center(
                                      child: Text(
                                        'Server is Down Try Again Later',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    backgroundColor: const Color.fromARGB(
                                      202,
                                      255,
                                      82,
                                      82,
                                    ),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              }
                            },

                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black87,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.03),
                      Center(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 2,
                                decoration: BoxDecoration(color: Colors.grey),
                              ),
                            ),
                            Text(
                              '  Or Register with  ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 2,
                                decoration: BoxDecoration(color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: height * 0.03),
                      Row(
                        mainAxisAlignment: .center,
                        children: [
                          Expanded(
                            child: LoginCard(
                              icons: Icons.facebook,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(width: width * 0.035),
                          Expanded(
                            child: LoginCard(
                              icons: Icons.tiktok,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: width * 0.035),
                          Expanded(
                            child: LoginCard(
                              icons: Icons.apple,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: height * 0.06),
                      Row(
                        mainAxisAlignment: .center,
                        children: [
                          Spacer(),
                          Text(
                            'Aleady! Have an Account',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          TextButton(
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
                            child: Text(
                              'Login Now',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ],
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

class LoginCard extends StatelessWidget {
  final IconData icons;
  final Color color;
  const LoginCard({super.key, required this.icons, required this.color});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Container(
      height: height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 2, color: Colors.black45),
        color: Colors.white,
      ),
      child: Icon(icons, color: color, size: 32),
    );
  }
}

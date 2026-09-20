import 'package:flutter/material.dart';
import 'package:flutter_login_app/thankspage.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
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
                        'Create New Password',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1E232C),
                        ),
                      ),

                      SizedBox(height: height * 0.015),

                      Text(
                        'Your new password must be unique form those your pervoiusly used',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),

                      SizedBox(height: height * 0.025),
                      SizedBox(
                        height: height * 0.08,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Enter New Password';
                            }
                            return null;
                          },

                          style: TextStyle(fontSize: 18, color: Colors.black),
                          decoration: InputDecoration(
                            labelText: 'New Password',
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

                      SizedBox(
                        height: height * 0.08,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Confirm New Password';
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
                                setState(() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ThanksPage(),
                                    ),
                                  );
                                });
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
                                'Reset Password',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

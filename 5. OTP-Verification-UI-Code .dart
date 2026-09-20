import 'package:flutter/material.dart';
import 'package:flutter_login_app/newpassword.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();

  @override
  void dispose() {
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
                    'OTP Verification',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E232C),
                    ),
                  ),

                  SizedBox(height: height * 0.015),

                  Text(
                    'Enter The Verification Code we Just sent on Your Email Address',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(height: height * 0.025),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      SizedBox(width: width * 0.01),
                      Expanded(
                        child: SizedBox(
                          height: height * 0.08,
                          child: TextField(
                            focusNode: focusNode1,
                            maxLength: 1,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,

                            onChanged: (value) {
                              if (value.length == 1) {
                                focusNode2
                                    .requestFocus(); // Explicitly focus next
                              }
                            },

                            style: TextStyle(fontSize: 18, color: Colors.black),
                            decoration: InputDecoration(
                              counterText: "",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: width * 0.035),
                      Expanded(
                        child: SizedBox(
                          height: height * 0.08,
                          child: TextField(
                            focusNode: focusNode2,
                            maxLength: 1,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,

                            onChanged: (value) {
                              if (value.length == 1) {
                                focusNode3
                                    .requestFocus(); // Explicitly focus next
                              }
                            },

                            style: TextStyle(fontSize: 18, color: Colors.black),

                            decoration: InputDecoration(
                              counterText: "",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: width * 0.035),
                      Expanded(
                        child: SizedBox(
                          height: height * 0.08,
                          child: TextField(
                            focusNode: focusNode3,
                            maxLength: 1,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,

                            onChanged: (value) {
                              if (value.length == 1) {
                                focusNode4
                                    .requestFocus(); // Explicitly focus next
                              }
                            },

                            style: TextStyle(fontSize: 18, color: Colors.black),

                            decoration: InputDecoration(
                              counterText: "",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: width * 0.035),
                      Expanded(
                        child: SizedBox(
                          height: height * 0.08,
                          child: TextField(
                            focusNode: focusNode4,
                            maxLength: 1,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,

                            style: TextStyle(fontSize: 18, color: Colors.black),

                            decoration: InputDecoration(
                              counterText: "",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.01),
                    ],
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
                                builder: (context) => const NewPassword(),
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
                            'Verify',
                            style: TextStyle(fontSize: 20, color: Colors.white),
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:oktm_service_mobile/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50, bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/logo_telu_login.png', width: 150, height: 150),
                        const Text(
                          'OKTM Service Mobile',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF9E0000),
                            )
                          ),
                        const Text(
                          'Telkom University',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF9E0000),
                            )
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'SSO Login',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        )
                    ),
                    const SizedBox(height: 50),
                    const CustomTextField(
                      hintText: 'Username',
                    ),
                    const SizedBox(height: 25),
                    const CustomTextField(
                      hintText: 'Password',
                      isPasswordInput: true,
                    ),
                    const SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF9E0000),
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                        )
                      ),
                    )
                  ],
                )
              ),
              // SizedBox(height:MediaQuery.of(context).viewInsets.bottom+20),
            ],
          ),
        ],
      )
    );
  }
}
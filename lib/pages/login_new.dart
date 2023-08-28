import 'package:app_welcome/main.dart';
import 'package:app_welcome/pages/forget_pass.dart';
import 'package:app_welcome/pages/home.dart';
import 'package:flutter/material.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  @override
  Widget build(BuildContext context) {
    // To set background Image
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/register.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // To set background Image
        body: Stack(
          children: [
            Container(
              // WelCome Back text
              padding: EdgeInsets.only(left: 35, top: 130),
              child: const Text(
                'WelCome Back',
                style: TextStyle(
                  color: Colors.lightGreenAccent,
                  fontSize: 33,
                ),
              ),
              // WelCome Back text
            ),
            SingleChildScrollView(
              child: Container(
                // To set the boxes in Center
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    left: 35,
                    right: 35),
                // To set the boxes in Center
                child: Column(
                  children: [
                    // Text filed for user name
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'User Name',
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    // Text filed for user name
                    const SizedBox(
                      height: 50.0,
                    ),
                    // Text Filed for Passwoed
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    // Text Filed for Passwoed
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // To create forget pass button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff4c505b),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return const ForgetPassword();
                              }),
                            );
                          },
                          child: const Text('Forget Password'),
                        ),
                        // To create forget pass button

                        // To create Arrow button
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4C505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return HomePage();
                                  },
                                ),
                              );
                            },
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )
                        // To create forget pass button
                      ],
                    ),
                    // To create Welcome page button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return WelcomePage();
                            },
                          ),
                        );
                      },
                      child: Text('WelCome Page'),
                    ),
                    // To create Welcome page button
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

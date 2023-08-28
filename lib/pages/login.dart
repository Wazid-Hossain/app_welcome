import 'package:app_welcome/pages/sing_up.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // To set Background Image
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/register.png'), fit: BoxFit.cover),
      ),
      // To set Background Image
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              //WelcomE Text
              padding: EdgeInsets.only(left: 35, top: 130),
              child: const Text(
                'WelCome Back',
                style: TextStyle(
                  color: Colors.lightGreenAccent,
                  fontSize: 33,
                ),
              ),
              //WelcomE Text
            ),
            // To Scroll the Page
            SingleChildScrollView(
              child: Container(
                // To text boxes set to middle
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4,
                    left: 35,
                    right: 35),
                // To text boxes set to middle
                child: Column(
                  children: [
                    // Mail text filed
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Your Mail',
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    // Mail text filed
                    const SizedBox(
                      height: 50.0,
                    ),
                    // Mobile text filed
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Your Mobile Number',
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    // Mobile text filed
                    const SizedBox(
                      height: 40,
                    ),
                    // Password text filed
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    // Password text filed
                    const SizedBox(
                      height: 40,
                    ),
                    // Confirm password text filed
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Again Enter Password',
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    // Confirm Password text filed

                    // If press Register button go to Singup page
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff4c505b),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return const SingUpPage();
                              }),
                            );
                          },
                          child: const Text('Register'),
                        ),
                        // If press Register button go to Singup page

                        // If press Already Have Account button go to Singup page
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff4c505b),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return const SingUpPage();
                              }),
                            );
                          },
                          child: const Text('Already Have Account'),
                        ),
                        // If press Already Have Account button go to Singup page
                      ],
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

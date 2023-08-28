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
    // To set backgroun image
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // To set backgroun image
        body: Stack(
          children: [
            // Welcome text
            Container(
              padding: EdgeInsets.only(left: 35, top: 130),
              child: const Text(
                'WelCome Back',
                style: TextStyle(
                  color: Colors.lightGreenAccent,
                  fontSize: 33,
                ),
              ),
              // Welcome text
            ),
            SingleChildScrollView(
              child: Container(
                // Padding to set boxes in Center
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    left: 35,
                    right: 35),
                // Padding to set boxes in Center
                child: Column(
                  children: [
                    // Text filed to Email
                    // text filed 2 for maail
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'username@example.com',
                        hintStyle: TextStyle(),
                        labelText: "Email",
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    // Text filed to Email
                    const SizedBox(
                      height: 50.0,
                    ),
                    // Text filed to Password
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: '123456789',
                        hintStyle: TextStyle(),
                        labelText: "Password",
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    // Text filed to Password
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      // Buttons in spacebetween
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // Buttons in spacebetween
                      children: [
                        // if press forget Pass go to forget Pass page
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
                        // if press forget Pass go to forget Pass page

                        // to create a arrow button
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
                      ],
                    ),
                    // to create a arrow button

                    // Create Welcame page button and go to first page
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
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
                    // Create Welcame page button and go to first page
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

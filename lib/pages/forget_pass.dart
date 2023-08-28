import 'package:app_welcome/pages/sing_up.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // To set Backgroun Image
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/register.png'),
          fit: BoxFit.cover,
        ),
      ),
      // To set Backgroun Image
      child: Scaffold(
        // WelCame Back Text
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            'WelCome Back',
            style: TextStyle(
              color: Color.fromARGB(255, 233, 217, 217),
              fontSize: 20,
            ),
          ),
          // WelCame Back Text
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Color(0xff4c505b),
        ),
        body: Stack(
          children: [
            // To set the box in center
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.5),
            ),
            // To set the box in center
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.3,
                  right: 35,
                  left: 35),
              // Text filed for Mobile Number
              child: TextField(
                decoration: InputDecoration(
                  hintText: '+8801700000000',
                  hintStyle: TextStyle(),
                  labelText: "Enter Your Mobile Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              // Text filed for Mobile Number
            ),

            // if press submit return to singup page
            // For sumbit button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.4),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return SingUpPage();
                          },
                        ),
                        // if press submit return to singup page
                      );
                    },
                    child: Text('Submet'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

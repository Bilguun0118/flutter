import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:instagram_f/ui/util/input.dart';
import 'package:instagram_f/ui/util/sp_manager.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png'),
            const SizedBox(
              height: 39,
            ),
            // Text("instagram"),
            const Input(
              hintText: "User name",
            ),
            const SizedBox(
              height: 12,
            ),
            const Input(
              hintText: "Password",
            ),

            //text button
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 19,
              ),
              child: (Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget Password ?",
                    style: TextStyle(
                        color: Colors.blue[500],
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  )
                ],
              )),
            ),

            //log in button
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 11,
              ),
              child: (ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(343, 44),
                  textStyle: TextStyle(fontSize: 14),
                  primary: Colors.blue[300],
                  onPrimary: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                ),
                onPressed: () {},
                child: Text(
                  "Log in",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )),
              
            ),
            
            
            //fb text button
            Container(
              padding: const EdgeInsets.symmetric(vertical: 27.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook_sharp,
                    color: Colors.blue[400],
                  ),
                  Text(
                    ' Log in with Facebook',
                    style: TextStyle(
                        color: (Colors.blue[500]),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),

            // OR text
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 41),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "________________",
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                      Text(
                        'OR',
                        style: new TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "________________",
                        style: TextStyle(color: Colors.grey[400]),
                      )
                    ],
                  ),
                ),
              ],
            ),

            //Don't have a account? Sign up.
            Container(
              child:
                  (Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Don't have a account ? ",
                  style: new TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Text(
                  'Sign up.',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ])),
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:seller_mobile_app/auth/login.dart';
import 'package:seller_mobile_app/auth/widgets/custom_screen.dart';

class SendMail extends StatelessWidget {
  const SendMail({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (e) => const LoginPage()));
              },
              icon: const Icon(Icons.close),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      image: DecorationImage(
                        image: AssetImage('assets/images/mail_send.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "An email has been sent to ",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color.fromARGB(255, 1, 24, 51),
                          ),
                        ),
                        TextSpan(
                          text: "luciendzou3@gmail.com",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 24, 41, 61),
                          ),
                        ),
                        TextSpan(
                          text:
                              ", please click on the link in the email to activate your account, otherwise you won't be able to shop as normal.",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color.fromARGB(255, 24, 41, 61),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Click here if you have not received an e-mail",
                      style: TextStyle(
                            fontSize: 14.0,
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

import 'package:flutter/material.dart';

import '../constants/validators/validation.dart';
import 'widgets/custom_screen.dart';

class Forgetpwd extends StatelessWidget {
  const Forgetpwd({super.key});

  @override
  Widget build(BuildContext context) {
    final formForgetPwdKey = GlobalKey<FormState>();
    return CustomScreen(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 230,
                      child: RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(children: [
                          TextSpan(
                              text: "Pasword Forget !\n",
                              style: TextStyle(
                                  fontSize: 30.8,
                                  color: Color.fromARGB(255, 1, 24, 51),
                                  fontWeight: FontWeight.w600)),
                          TextSpan(
                              text:
                                  "\nEnter your email address to retrieve the password.",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Color.fromARGB(255, 24, 41, 61),
                              )),
                        ]),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Form(
                      key: formForgetPwdKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextFormField(
                        validator: (value) => TValidator.validateEmail(value),
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(),
                              ),
                              prefixIcon: Icon(Icons.email),
                              labelText: "Email address",
                            ),
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 55,
                            child: ElevatedButton(
                              style: const ButtonStyle(
                                enableFeedback: true,
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.blueAccent),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Retrieve",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

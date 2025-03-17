import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../constants/validators/validation.dart';
import 'widgets/custom_screen.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formSigninKey = GlobalKey<FormState>();
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
                              text: "Sign In !\n",
                              style: TextStyle(
                                  fontSize: 32.8,
                                  color: Color.fromARGB(255, 1, 24, 51),
                                  fontWeight: FontWeight.w600)),
                          TextSpan(
                              text:
                                  "\nEnter your personnal's informations to get register on the space.",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Color.fromARGB(255, 24, 41, 61),
                              )),
                        ]),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Form(
                      key: formSigninKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  validator: (value) =>
                                      TValidator.validateInput(value, 'Name'),
                                  expands: false,
                                  keyboardType: TextInputType.name,
                                  decoration: const InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide: BorderSide(),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide: BorderSide(),
                                    ),
                                    prefixIcon: Icon(Iconsax.user),
                                    labelText: "Name",
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: TextFormField(
                                  validator: (value) =>
                                      TValidator.validateInput(
                                          value, 'Surname'),
                                  keyboardType: TextInputType.text,
                                  decoration: const InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide: BorderSide(),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide: BorderSide(),
                                    ),
                                    prefixIcon: Icon(Iconsax.user),
                                    labelText: "Surname",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            validator: (value) =>
                                TValidator.validatePhoneNumber(value),
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
                              prefixIcon: Icon(Iconsax.call),
                              labelText: "Phone number",
                            ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          SizedBox(
                            width: 120,
                            height: 55,
                            child: ElevatedButton(
                                style: const ButtonStyle(
                                  enableFeedback: true,
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.blueAccent),
                                ),
                                onPressed: () {},
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Next',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20)),
                                      Icon(
                                        Iconsax.arrow_right_1,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

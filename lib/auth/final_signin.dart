import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../constants/validators/validation.dart';
import 'widgets/custom_screen.dart';

class FinalSignin extends StatelessWidget {
  const FinalSignin({super.key});

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
                    Form(
                      key: formSigninKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextFormField(
                            validator: (value) =>
                                TValidator.validateEmail(value),
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
                              prefixIcon: Icon(Iconsax.direct),
                              labelText: "Adresse mail",
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            validator: (value) =>
                                TValidator.validatePassword(value),decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(),
                              ),
                              prefixIcon: const Icon(Iconsax.password_check),
                              labelText: "Password",
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Iconsax.eye_slash)),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 24,
                                height: 24,
                                child: Checkbox(
                                    value: false, onChanged: (value) {}),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text.rich(
                                TextSpan(children: [
                                  TextSpan(
                                      text: "Acceptez les ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                  TextSpan(
                                      text: "conditions d'utilisation",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .apply(
                                            color: Colors.black,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: Colors.black,
                                          )),
                                ]),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: const Text('Créer son compte')),
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

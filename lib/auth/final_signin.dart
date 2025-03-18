import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:seller_mobile_app/auth/complet_signin.dart';

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
                          DropdownButtonFormField(
                            items: ['Option 1', 'Option 2', 'Option 3']
                                .map((option) => DropdownMenuItem(
                                      value: option,
                                      child: Text(option),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              print(value);
                            },
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
                              prefixIcon: Icon(Iconsax.map),
                              labelText: "Country",
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  validator: (value) =>
                                      TValidator.validateInput(value, 'City'),
                                  expands: false,
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
                                    prefixIcon: Icon(Iconsax.location),
                                    labelText: "City",
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: TextFormField(
                                  validator: (value) =>
                                      TValidator.validateInput(value, 'Street'),
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
                                    prefixIcon: Icon(Iconsax.building),
                                    labelText: "Street",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  padding: const EdgeInsets.all(15),
                                  style: const ButtonStyle(
                                      backgroundColor: WidgetStatePropertyAll(
                                        Color.fromARGB(225, 0, 82, 204),
                                      ),
                                      shape: WidgetStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))))),
                                  color: Colors.white,
                                  onPressed: () {},
                                  icon: const Icon(Iconsax.location_add)),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: TextFormField(
                                  validator: (value) =>
                                      TValidator.validateInput(value, 'location'),
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
                                    prefixIcon: Icon(Iconsax.location_tick),
                                    labelText: "location",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
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
                            width: 120,
                            height: 55,
                            child: ElevatedButton(
                                style: const ButtonStyle(
                                  enableFeedback: true,
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.blueAccent),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (e) =>
                                              const CompletSignin()));
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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

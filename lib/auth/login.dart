import 'package:flutter/material.dart';
import 'package:phone_text_field/phone_text_field.dart';
import 'package:seller_mobile_app/auth/widgets/custom_screen.dart';
import 'package:seller_mobile_app/home/home.dart';
import 'package:seller_mobile_app/navigation_bar.dart';

import 'forget_pwd.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formLoginKey = GlobalKey<FormState>();
    bool rememberMe = false;
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
                              text: "Log In !\n",
                              style: TextStyle(
                                  fontSize: 32.8,
                                  color: Color.fromARGB(255, 1, 24, 51),
                                  fontWeight: FontWeight.w600)),
                          TextSpan(
                              text:
                                  "\nEnter your personnal's informations if your already sign In.",
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
                      key: formLoginKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          PhoneTextField(
                            locale: const Locale('fr'),
                            isRequired: true,
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
                              prefixIcon: Icon(Icons.phone),
                              labelText: "Phone number",
                            ),
                            searchFieldInputDecoration: const InputDecoration(
                              filled: true,
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
                              suffixIcon: Icon(Icons.search),
                              hintText: "Search country",
                            ),
                            initialCountryCode: "+237",
                            onChanged: (phone) {},
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          TextFormField(
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
                              prefixIcon: Icon(Icons.lock),
                              labelText: "Password",
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: rememberMe,
                                    onChanged: (bool? bool) {},
                                    activeColor:
                                        const Color.fromARGB(255, 3, 147, 243),
                                  ),
                                  const Text(
                                    "Remember me",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (e) => const Forgetpwd()));
                                },
                                child: const Text(
                                  "Forget password?",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromARGB(255, 1, 71, 151)),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 65,
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
                                          builder: (e) => const NavigationBarWidget()));
                              },
                              child: const Text(
                                "Log In",
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

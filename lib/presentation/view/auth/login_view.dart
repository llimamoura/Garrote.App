import 'package:flutter/material.dart';
import 'package:garrote_app/core/utils/colors.dart';
import 'package:garrote_app/presentation/widgets/main_button_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign In',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: CustomColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Enter your credentials to Log In your account",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              width: size.width,
              height: size.height * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: SizedBox(
                      height: size.height * 0.1 + 50,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.mail,
                                color: CustomColors.gray,
                              ),
                              hintText: "E-mail",
                            ),
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                color: CustomColors.gray,
                              ),
                              suffixIcon: Icon(
                                Icons.remove_red_eye_outlined,
                                color: CustomColors.gray,
                              ),
                              hintText: "Password",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(67.0),
                    child: SizedBox(
                      height: size.height * 0.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const MainButtonWidget(
                            text: "Sing in",
                            color: CustomColors.primaryColor,
                            textColor: Colors.white,
                            height: 60,
                            borderRadius: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Don´t  have account?",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  "create account",
                                  style: TextStyle(fontSize: 12, color: CustomColors.secundaryColor),
                                ),
                              )
                            ],
                          ),
                        ],
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

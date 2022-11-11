import 'package:flutter/material.dart';

import 'Registerpage.dart';
import 'main.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/Login.png",
            ),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(flex: 2, child: Container()),
          const Text("The",
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 18,
              )),
          const SizedBox(height: 5),
          const Text("SocialMe",
              style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 28,
                  fontWeight: FontWeight.bold)),
          Flexible(flex: 1, child: Container()),
          Container(
              width: 327,
              height: 377,
              decoration: BoxDecoration(
                color: Color(0xff000000).withOpacity(0.32),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: Color(0xff000000).withOpacity(0.30), width: 1.5),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(28.0),
                    child: Text("Login",
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 22,
                            fontWeight: FontWeight.w700)),
                  ),
                  Container(
                    width: 280,
                    decoration: BoxDecoration(
                        color: const Color(0xffF1F1F1),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextFormField(
                      controller: email,
                      obscureText: true,
                      enableInteractiveSelection: true,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "abcd@example.com",
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                        prefixIcon:
                            Icon(Icons.email, color: Colors.black, size: 20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 280,
                    decoration: BoxDecoration(
                        color: const Color(0xffF1F1F1),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextFormField(
                      controller: password,
                      obscureText: true,
                      enableInteractiveSelection: true,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "password",
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                        prefixIcon:
                            Icon(Icons.password, color: Colors.black, size: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text("Submit",
                                style: TextStyle(
                                    color: Color(0xff2B2B5E), fontSize: 18))),
                        const Icon(Icons.arrow_forward_rounded,
                            color: Color(
                              0xff2B2B5E,
                            ),
                            size: 20)
                      ],
                    ),
                  ),
                  Flexible(flex: 1, child: Container()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text("Forgot Password",
                              style: TextStyle(
                                  color: Color(0xff2B2B5E), fontSize: 16))),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterScreen()));
                          },
                          child: const Text("SignUp/ Register",
                              style: TextStyle(
                                color: Color(0xff2B2B5E),
                                fontSize: 16,
                              ))),
                    ],
                  ),
                  Flexible(flex: 1, child: Container()),
                ],
              )),
          Flexible(flex: 2, child: Container())
        ],
      ),
    ));
  }
}

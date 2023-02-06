import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hacktonflutter/screen/signup.dart';
import 'package:hacktonflutter/widget/data.dart';
import 'package:hacktonflutter/widget/text.dart';

import '../widget/mindata.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Container(
                    color: Colors.white,
                    child: Icon(Icons.arrow_back),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage('assets/images/Logo.png'),
                      height: 30,
                      color: Color(0xff0D986A),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    text1('Plantify', 20, FontWeight.bold),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text('Login', 26, FontWeight.bold),
                    const SizedBox(
                      height: 20,
                    ),
                    text(
                        'Masukan NISN dan password untuk\nmemulai belajar sekarang',
                        14,
                        FontWeight.w400),
                    const SizedBox(
                      height: 60,
                    ),
                    text1('Username/ Email', 13, FontWeight.w400),
                    FieldText(
                      controller: emailController,
                      text: 'email',
                      prefix: Icon(Icons.lock_outlined),
                      bool: true,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    text1('Password', 13, FontWeight.w400),
                    FieldText(
                      controller: passwordController,
                      text: 'Password',
                      prefix: Icon(Icons.lock_outlined),
                      bool: true,
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()),
                              );
                            },
                            child: Text('Login in Gmail')))
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              RoundButton(
                title: 'Register',
                onTap: () async {
                  try {
                    UserCredential userCredential = await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text);
      
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp()),
                    );
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (_) => AlertDialog(
                                title: Text("The password provided is too weak."),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("Ok"))
                                ],
                              ));
                    } else if (e.code == 'email-already-in-use') {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (_) => AlertDialog(
                          title:
                              Text("The account already exists for that email."),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Ok"))
                          ],
                        ),
                      );
                    }
                  } catch (e) {
                    print(e);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

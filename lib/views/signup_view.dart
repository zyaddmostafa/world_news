import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:world_news/constants.dart';
import 'package:world_news/helpers/signup_method.dart';
import 'package:world_news/views/news_view.dart';
import 'package:world_news/widget/appicon.dart';
import 'package:world_news/widget/appname.dart';
import 'package:world_news/widget/custom_textfield.dart';
import 'package:world_news/helpers/customsnakebar.dart';
import 'package:world_news/widget/custombuttom.dart';
import 'package:world_news/widget/skip_login.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});
  static String id = signupid;

  @override
  State<SignupView> createState() => _SignupViewState();
}

String? email;
String? password;

GlobalKey<FormState> formkey = GlobalKey();
bool isloading = false;

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formkey,
            child: ListView(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Appicon(
                  color: kcolor1,
                ),
                const Appname(
                  color: kcolor1,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextfield(
                  hint: 'Email',
                  onchange: (value) {
                    email = value;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextfield(
                  obscuretext: true,
                  hint: 'Password',
                  onchange: (value) {
                    password = value;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                    onTap: () async {
                      if (formkey.currentState!.validate()) {
                        isloading = true;
                        setState(() {});
                        try {
                          await signup();
                          Navigator.pushNamed(context, NewsView.id);
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            showsnackbar(
                                context, 'The password provided is too weak.');
                          } else if (e.code == 'email-already-in-use') {
                            showsnackbar(context,
                                'The account already exists for that email.');
                          }
                        } catch (e) {
                          showsnackbar(context, 'there is an error try agin');
                          print(e);
                        }
                      }
                      isloading = false;
                      setState(() {});
                    },
                    child: const Custombuttom(buttomname: 'Sign Up')),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    const Text('Do u have an account ?'),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Log in ',
                        style: TextStyle(color: kcolor1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 150,
                ),
                const SkipLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:world_news/constants.dart';
import 'package:world_news/helpers/customsnakebar.dart';
import 'package:world_news/helpers/login_method.dart';
import 'package:world_news/views/news_view.dart';
import 'package:world_news/views/signup_view.dart';
import 'package:world_news/widget/appicon.dart';
import 'package:world_news/widget/appname.dart';
import 'package:world_news/widget/custom_textfield.dart';
import 'package:world_news/widget/custombuttom.dart';
import 'package:world_news/widget/skip_login.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  static String id = loginid;

  @override
  State<LoginView> createState() => _LoginViewState();
}

GlobalKey<FormState> formkey = GlobalKey();
String? loginemail;
String? loginpassword;
bool isloading = false;

class _LoginViewState extends State<LoginView> {
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
                  size: 70,
                  color: kcolor1,
                ),
                const Appname(
                  size: 30,
                  color: kcolor1,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextfield(
                  hint: 'Email',
                  onchange: (value) {
                    loginemail = value;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextfield(
                  hint: 'Password',
                  onchange: (value) {
                    loginpassword = value;
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
                        await login();

                        Navigator.pushNamed(context, NewsView.id);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          showsnackbar(
                              context, 'No user found for that email.');
                        } else if (e.code == 'wrong-password') {
                          showsnackbar(context,
                              'Wrong password provided for that user.');
                          print('Wrong password provided for that user.');
                        }
                      } catch (e) {
                        showsnackbar(context, 'there is an error try agin');
                        print(e);
                      }
                    }
                    isloading = false;
                    setState(() {});
                  },
                  child: const Custombuttom(buttomname: 'Login'),
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    const Text('u Dont have an account ?'),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, SignupView.id);
                      },
                      child: const Text(
                        'Sign up',
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

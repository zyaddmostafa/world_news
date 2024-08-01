import 'package:flutter/material.dart';
import 'package:world_news/constants.dart';
import 'package:world_news/widget/appicon.dart';
import 'package:world_news/widget/appname.dart';
import 'package:world_news/widget/custom_textfield.dart';
import 'package:world_news/widget/customappbar.dart';
import 'package:world_news/widget/custombuttom.dart';

class Feedbackview extends StatelessWidget {
  const Feedbackview({super.key});
  static String id = feedbackid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: const EdgeInsets.only(right: 50),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Appicon(color: kcolor1, size: 40),
              Appname(color: kcolor1, size: 20),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: const [
            SizedBox(
              height: 25,
            ),
            const Icon(
              Icons.feedback,
              size: 40,
              color: Colors.grey,
            ),
            Center(
              child: Text(
                'Feedback',
                style: TextStyle(color: kcolor1, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextfield(
              hint: 'Type ur name ',
            ),
            SizedBox(
              height: 12,
            ),
            CustomTextfield(
              hint: 'Mobile phone  ',
            ),
            SizedBox(
              height: 12,
            ),
            CustomTextfield(
              hint: 'email',
            ),
            SizedBox(
              height: 12,
            ),
            CustomTextfield(
              hint: 'write ur feedback',
            ),
            SizedBox(
              height: 12,
            ),
            CustomTextfield(
              hint: 'please tell us about ur experince ',
              maxlines: 4,
            ),
            SizedBox(
              height: 40,
            ),
            Custombuttom(buttomname: 'Submit')
          ],
        ),
      ),
    );
  }
}

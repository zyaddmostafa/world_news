import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:world_news/constants.dart';
import 'package:world_news/widget/appicon.dart';
import 'package:world_news/widget/appname.dart';
import 'package:world_news/widget/custom_textfield.dart';
import 'package:world_news/widget/customappbar.dart';
import 'package:world_news/widget/custombuttom.dart';

class Feedbackview extends StatefulWidget {
  const Feedbackview({super.key});
  static String id = feedbackid;

  @override
  State<Feedbackview> createState() => _FeedbackviewState();
}

class _FeedbackviewState extends State<Feedbackview> {
  String? name, email, feedback, experince, phone;

  CollectionReference userfeedback =
      FirebaseFirestore.instance.collection('users feedbacks');

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
          children: [
            const SizedBox(
              height: 25,
            ),
            const Icon(
              Icons.feedback,
              size: 40,
              color: Colors.grey,
            ),
            const Center(
              child: Text(
                'Feedback',
                style: TextStyle(color: kcolor1, fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextfield(
              onchange: (value) {
                name = value;
              },
              hint: 'Type ur name ',
            ),
            const SizedBox(
              height: 12,
            ),
            CustomTextfield(
              onchange: (value) {
                phone = value;
              },
              hint: 'Mobile phone  ',
            ),
            const SizedBox(
              height: 12,
            ),
            CustomTextfield(
              onchange: (value) {
                email = value;
              },
              hint: 'email',
            ),
            const SizedBox(
              height: 12,
            ),
            CustomTextfield(
              onchange: (value) {
                feedback = value;
              },
              hint: 'write ur feedback',
            ),
            const SizedBox(
              height: 12,
            ),
            CustomTextfield(
              onchange: (value) {
                experince = value;
              },
              hint: 'please tell us about ur experince ',
              maxlines: 4,
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Future<void> getfeedback() {
                  // Call the user's CollectionReference to add a new user
                  return userfeedback.add(
                    {
                      'name': name,
                      'phone': phone,
                      'email': email,
                      'feedback': feedback,
                      'about the experince': experince,
                    },
                  );
                }
              },
              child: const Custombuttom(buttomname: 'Submit'),
            )
          ],
        ),
      ),
    );
  }
}

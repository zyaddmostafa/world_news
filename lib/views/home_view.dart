import 'package:flutter/material.dart';
import 'package:world_news/constants.dart';
import 'package:world_news/views/login_view.dart';
import 'package:world_news/widget/appicon.dart';
import 'package:world_news/widget/appname.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = homeid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcolor1,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Appicon(
              size: 70,
              color: kcolor2,
            ),
            const SizedBox(
              height: 16,
            ),
            const Appname(
              size: 30,
              color: kcolor2,
            ),
            const Text(
              ' all type of news from all trusted sourse for all pepole ',
              style: TextStyle(
                color: Color.fromARGB(255, 192, 188, 188),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, LoginView.id);
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Get Started  ',
                      style: TextStyle(color: kcolor1, fontSize: 30),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: kcolor1,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}

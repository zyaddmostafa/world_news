import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:world_news/firebase_options.dart';
import 'package:world_news/views/categorynews.dart';
import 'package:world_news/views/feedbackview.dart';
import 'package:world_news/views/home_view.dart';
import 'package:world_news/views/login_view.dart';
import 'package:world_news/views/news_view.dart';
import 'package:world_news/views/signup_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'world-news-ccd2c',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Worldnews());
}

class Worldnews extends StatelessWidget {
  const Worldnews({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeView.id: (context) => const HomeView(),
        LoginView.id: (context) => const LoginView(),
        SignupView.id: (context) => const SignupView(),
        NewsView.id: (context) => const NewsView(),
        Categorynews.id: (context) => const Categorynews(),
        Feedbackview.id: (context) => const Feedbackview(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.id,
    );
  }
}

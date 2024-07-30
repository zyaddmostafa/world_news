import 'package:firebase_auth/firebase_auth.dart';
import 'package:world_news/views/signup_view.dart';

Future<void> signup() async {
  final user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email!,
    password: password!,
  );
}

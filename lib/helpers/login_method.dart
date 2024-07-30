import 'package:firebase_auth/firebase_auth.dart';
import 'package:world_news/views/login_view.dart';

Future<void> login() async {
  final User = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: loginemail!,
    password: loginpassword!,
  );
}

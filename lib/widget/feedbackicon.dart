import 'package:flutter/material.dart';
import 'package:world_news/views/feedbackview.dart';

class feedbackicon extends StatelessWidget {
  const feedbackicon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50),
      child: IconButton(
        onPressed: () {
          Navigator.pushNamed(context, Feedbackview.id);
        },
        icon: const Icon(
          Icons.feedback,
          size: 30,
          color: Colors.grey,
        ),
      ),
    );
  }
}

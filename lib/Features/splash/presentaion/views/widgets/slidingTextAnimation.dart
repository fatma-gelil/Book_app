
// ignore_for_file: file_names

import 'package:flutter/widgets.dart';

// ignore: camel_case_types
class slidingtextanimation extends StatelessWidget {
  const slidingtextanimation({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(
            "Your Reading Guide",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        );
      },
    );
  }
}

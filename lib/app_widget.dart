import 'package:flutter/material.dart';
import 'package:implicit_animation_masterclass/implicit_animations_page.dart';

import 'implicit_animations_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Implicit Animation',
      theme: ThemeData(backgroundColor: Colors.blue),
      home: const ImplicitAnimationsPage(),
    );
  }
}

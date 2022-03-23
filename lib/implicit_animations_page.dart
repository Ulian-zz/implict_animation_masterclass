import 'package:flutter/material.dart';

class ImplicitAnimationsPage extends StatefulWidget {
  const ImplicitAnimationsPage({Key? key}) : super(key: key);

  @override
  _ImplicitAnimationsPageState createState() => _ImplicitAnimationsPageState();
}

class _ImplicitAnimationsPageState extends State<ImplicitAnimationsPage> {
  double size1 = 50;
  double size2 = 25;

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Implicit Animations'),
        ),
      ),
      body: AnimatedAlign(
        alignment: isSelected ? Alignment.topCenter : Alignment.bottomRight,
        duration: const Duration(seconds: 2),
        child: GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: AnimatedContainer(
            margin: const EdgeInsets.all(30),
            duration: const Duration(seconds: 2),
            width: isSelected ? 100 : 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: isSelected
                  ? BorderRadius.circular(0)
                  : BorderRadius.circular(50),
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}

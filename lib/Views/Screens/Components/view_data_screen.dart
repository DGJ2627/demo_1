import 'package:flutter/material.dart';

class View_Data_Screen extends StatefulWidget {
  const View_Data_Screen({super.key});

  @override
  State<View_Data_Screen> createState() => _View_Data_ScreenState();
}

class _View_Data_ScreenState extends State<View_Data_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Data Screen"),
        centerTitle: true,
      ),
    );
  }
}

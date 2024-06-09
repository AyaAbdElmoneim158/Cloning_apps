import 'package:flutter/material.dart';
import '../widgets/bottom_key_board.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/top_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          TopField(),
          BottomKeyBoard(),
        ],
      ),
    );
  }
}

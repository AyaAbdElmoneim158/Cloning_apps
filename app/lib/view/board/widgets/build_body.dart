import 'package:flutter/material.dart';

class BuildBody extends StatelessWidget {
  const BuildBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        // AllTasks(),
        // UnCompletedTasks(),
        // CompletedTasks(),
        // FavoriteTasks(),
        Center(child: Text("AllTasks")),
        Center(child: Text("UnCompletedTasks")),
        Center(child: Text("CompletedTasks")),
        Center(child: Text("FavoriteTasks")),
      ],
    );
  }
}

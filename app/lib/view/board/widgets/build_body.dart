import 'package:flutter/material.dart';

import '../../Tasks/all_screen.dart';
import '../../Tasks/complete_screen.dart';
import '../../Tasks/favorite_screen.dart';
import '../../Tasks/uncomplete_screen.dart';

class BuildBody extends StatelessWidget {
  const BuildBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        AllTasks(),
        UnCompletedTasks(),
        CompletedTasks(),
        FavoriteTasks(),
      ],
    );
  }
}

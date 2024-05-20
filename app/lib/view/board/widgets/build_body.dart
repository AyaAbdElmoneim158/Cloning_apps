import 'package:flutter/material.dart';

import '../../tasks/all_screen.dart';
import '../../tasks/complete_screen.dart';
import '../../tasks/favorite_screen.dart';
import '../../tasks/uncomplete_screen.dart';

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

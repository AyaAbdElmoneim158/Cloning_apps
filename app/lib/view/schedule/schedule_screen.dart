import 'package:app/view/schedule/widgets/build_body.dart';
import 'package:flutter/material.dart';

import '../../widgets/build_app_bar.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "Schedule"),
      body: const BuildBody(),
    );
  }
}

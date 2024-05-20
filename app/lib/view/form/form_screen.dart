import 'package:app/controller/app_cubit.dart';
import 'package:app/controller/app_state.dart';
import 'package:app/view/form/widgets/build_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/build_app_bar.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(builder: (context, state) {
      return Scaffold(
          appBar: buildAppBar(context, 'Add task'),
          body: const BuildBody(),
          resizeToAvoidBottomInset: false);
    }, listener: (context, state) {
      if (state is AppInitialState) {
        debugPrint('AppInitialState');
      }
    });
  }
}

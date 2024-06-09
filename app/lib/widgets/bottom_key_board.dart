import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../widgets/equal_btn.dart';

class BottomKeyBoard extends StatelessWidget {
  const BottomKeyBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Container(
        width: double.infinity,
        decoration: boxDecoration,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) => buttons[index]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) => buttons[index + 4]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) => buttons[index + 8]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            List.generate(3, (index) => buttons[index + 12]),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            List.generate(3, (index) => buttons[index + 15]),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: MediaQuery.sizeOf(context).height * 0.02),
                const EqualBtn()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class EmptyTasksList extends StatelessWidget {
  const EmptyTasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "https://cdn-icons-png.flaticon.com/128/7486/7486764.png",
            fit: BoxFit.cover,
            height: 100,
          ),
          const SizedBox(height: 8),
          Text(
            "No tasks....!",
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Colors.grey),
          )
        ],
      ),
    );
  }
}

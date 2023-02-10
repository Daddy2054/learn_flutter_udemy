import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text('Load'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
        ),
        const SizedBox(width: 8),

        ElevatedButton(
          onPressed: () {},
          child: const Text('Clear'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
        ),
      ],
    );
  }
}

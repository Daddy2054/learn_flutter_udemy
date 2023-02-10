import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(
          color: index % 2 == 0 ? Colors.white : Colors.blue[50],
          child: ListTile(
            leading: Text(
              'ID:1',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }
}

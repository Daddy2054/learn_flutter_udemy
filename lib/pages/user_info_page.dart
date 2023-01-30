import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:learn_flutter_udemy/model/user.dart';

class UserInfoPage extends StatelessWidget {
  final User userInfo;
  const UserInfoPage({super.key, required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Info'),
        centerTitle: true,
      ),
      body: Card(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            ListTile(
              title: Text(
                '${userInfo.name}',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text('${userInfo.story}'),
              leading: Icon(
                Icons.person,
                color: Colors.black,
              ),
              trailing: Text('${userInfo.country}'),
            ),
            ListTile(
              title: Text(
                '${userInfo.phone}',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: Icon(
                Icons.phone,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Text(
                '${userInfo.email}',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: Icon(
                Icons.mail,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}

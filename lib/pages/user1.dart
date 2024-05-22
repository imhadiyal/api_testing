import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/controller.dart';

class UserApi1 extends StatelessWidget {
  const UserApi1({super.key});

  @override
  Widget build(BuildContext context) {
    AgentConteroller mutable = Provider.of<AgentConteroller>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("UserApi"),
      ),
      body: Center(
        child: (mutable.user.isEmpty)
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: mutable.user.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(mutable.user[index].email),
                  );
                },
              ),
      ),
    );
  }
}

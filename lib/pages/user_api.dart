import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/controller.dart';

class UserApi extends StatelessWidget {
  const UserApi({super.key});

  @override
  Widget build(BuildContext context) {
    AgentConteroller mutable = Provider.of<AgentConteroller>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("UserApi1"),
      ),
      body: Center(
        child: (mutable.alldata.isEmpty)
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: mutable.alldata.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(mutable.alldata[index].lastName),
                  );
                },
              ),
      ),
    );
  }
}

import 'package:api/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    AgentConteroller mutable = Provider.of<AgentConteroller>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo Page"),
      ),
      body: Center(
        child: (mutable.alltodo.isEmpty)
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: mutable.alltodo.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(mutable.alltodo[index].todo),
                  );
                },
              ),
      ),
    );
  }
}

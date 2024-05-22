import 'package:api/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    AgentConteroller mutabal = Provider.of<AgentConteroller>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe"),
      ),
      body: Center(
        child: (mutabal.allrecipe.isEmpty)
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: mutabal.allrecipe.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(mutabal.allrecipe[index].name),
                  );
                },
              ),
      ),
    );
  }
}

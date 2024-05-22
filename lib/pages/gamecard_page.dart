import 'package:api/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GamecardPage extends StatelessWidget {
  const GamecardPage({super.key});

  @override
  Widget build(BuildContext context) {
    AgentConteroller mutabale = Provider.of<AgentConteroller>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gamecard Page"),
      ),
      body: Center(
        child: (mutabale.allgamecard.isEmpty)
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: mutabale.allgamecard.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(mutabale.allgamecard[index].displayName),
                  );
                },
              ),
      ),
    );
  }
}

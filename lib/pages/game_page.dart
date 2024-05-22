import 'package:api/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    AgentConteroller mutebal = Provider.of<AgentConteroller>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Game Page"),
      ),
      body: Center(
          child: (mutebal.allgame.isEmpty)
              ? CircularProgressIndicator()
              : ListView.builder(
                  itemCount: mutebal.allgame.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(mutebal.allgame[index].displayName),
                    );
                  },
                )),
    );
  }
}

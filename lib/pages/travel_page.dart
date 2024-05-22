import 'package:api/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TravelPage extends StatelessWidget {
  const TravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    AgentConteroller mutabal = Provider.of<AgentConteroller>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Travel Page"),
      ),
      body: Center(
        child: (mutabal.alltravel.isEmpty)
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: mutabal.alltravel.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(mutabal.alltravel[index].presentation.title),
                  );
                },
              ),
      ),
    );
  }
}

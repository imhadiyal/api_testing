import 'package:api/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuotesPage extends StatelessWidget {
  const QuotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    AgentConteroller mutabal = Provider.of<AgentConteroller>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Quotes"),
      ),
      body: Center(
        child: (mutabal.allquotes.isEmpty)
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: mutabal.allquotes.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(mutabal.allquotes[index].quote),
                  );
                },
              ),
      ),
    );
  }
}

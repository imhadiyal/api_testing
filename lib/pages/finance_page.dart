import 'package:api/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FinancePage extends StatelessWidget {
  const FinancePage({super.key});

  @override
  Widget build(BuildContext context) {
    AgentConteroller mutabal = Provider.of<AgentConteroller>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Finance Page"),
      ),
      body: Center(
          child: (mutabal.allfinance.isEmpty)
              ? CircularProgressIndicator()
              : ListView.builder(
                  itemCount: mutabal.allfinance.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title:
                          Text(mutabal.allfinance[index].tickerId.toString()),
                    );
                  },
                )),
    );
  }
}

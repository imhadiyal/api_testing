import 'package:api/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    AgentConteroller mutabal = Provider.of<AgentConteroller>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather Page"),
      ),
      body: Center(
        child: (mutabal.allweather.isEmpty)
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: mutabal.allweather.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(mutabal.allweather[index].datetime.toString()),
                    subtitle: Text(mutabal.allweather[index].temp),
                  );
                },
              ),
      ),
    );
  }
}

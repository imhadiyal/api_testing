import 'package:api/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    AgentConteroller mutable = Provider.of<AgentConteroller>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Map Page"),
        ),
        body: Center(
          child: (mutable.allmap.isEmpty)
              ? const CircularProgressIndicator()
              : ListView.builder(
                  itemCount: mutable.allmap.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(mutable.allmap[index].displayName),
                    );
                  },
                ),
        ));
  }
}

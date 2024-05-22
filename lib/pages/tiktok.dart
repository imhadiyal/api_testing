import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/controller.dart';

class Tiktokapi extends StatelessWidget {
  const Tiktokapi({super.key});

  @override
  Widget build(BuildContext context) {
    AgentConteroller mutable = Provider.of<AgentConteroller>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("tiktokApi"),
      ),
      body: Center(
        child: (mutable.tiktok.isEmpty)
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: mutable.tiktok.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(mutable.tiktok[index].videoId),
                  );
                },
              ),
      ),
    );
  }
}

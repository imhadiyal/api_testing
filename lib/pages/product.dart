import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/controller.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    AgentConteroller mutable = Provider.of<AgentConteroller>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductApi"),
      ),
      body: Center(
        child: (mutable.product.isEmpty)
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: mutable.product.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(mutable.product[index].brand),
                  );
                },
              ),
      ),
    );
  }
}

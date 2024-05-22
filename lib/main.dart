import 'package:api/controller/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AgentConteroller(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

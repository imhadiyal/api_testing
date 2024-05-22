import 'package:flutter/material.dart';

import '../routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("HomePage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.instance.user);
              },
              child: const Text("USER API"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.instance.user1);
              },
              child: const Text("USER PAGE 2 API"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.instance.product);
              },
              child: const Text("Product API"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.instance.tiktok);
              },
              child: const Text("Tiktok API"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.instance.quotes);
              },
              child: const Text("Quotes API"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.instance.recipe);
              },
              child: const Text("Recipe API"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.instance.todo);
              },
              child: const Text("Todo API"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.instance.game);
              },
              child: const Text("Game API"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.instance.map);
              },
              child: const Text("Map API"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.instance.gamecard);
              },
              child: const Text("Gamecard API"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.instance.finance);
              },
              child: const Text("Finance API"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.instance.travel);
              },
              child: const Text("Travel API"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.instance.weather);
              },
              child: const Text("weather API"),
            ),
          ],
        ),
      ),
    );
  }
}

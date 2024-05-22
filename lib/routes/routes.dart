import 'package:api/pages/finance_page.dart';
import 'package:api/pages/game_page.dart';
import 'package:api/pages/gamecard_page.dart';
import 'package:api/pages/home_page.dart';
import 'package:api/pages/map_page.dart';
import 'package:api/pages/quotes_page.dart';
import 'package:api/pages/tiktok.dart';
import 'package:api/pages/todo_page.dart';
import 'package:api/pages/travel_page.dart';
import 'package:api/pages/weather_page.dart';
import 'package:flutter/cupertino.dart';
import '../pages/product.dart';
import '../pages/recipe_page.dart';
import '../pages/user1.dart';
import '../pages/user_api.dart';

class Routes {
  Routes._();
  static final Routes instance = Routes._();
  String home = '/';
  String user = 'user';
  String user1 = 'user1';
  String product = 'product';
  String tiktok = 'tiktok';
  String quotes = 'quotes';
  String recipe = 'recipe';
  String todo = 'todo';
  String game = 'game';
  String map = 'map';
  String gamecard = 'gamecard';
  String finance = 'finance';
  String travel = 'travel';
  String weather = 'weather';

  Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const HomePage(),
    'user': (context) => const UserApi(),
    'user1': (context) => const UserApi1(),
    'product': (context) => const ProductPage(),
    'tiktok': (context) => const Tiktokapi(),
    'quotes': (context) => const QuotesPage(),
    'recipe': (context) => const RecipePage(),
    'todo': (context) => const TodoPage(),
    'game': (context) => const GamePage(),
    'map': (context) => const MapPage(),
    'gamecard': (context) => const GamecardPage(),
    'finance': (context) => const FinancePage(),
    'travel': (context) => const TravelPage(),
    'weather': (context) => const WeatherPage(),
  };
}

import 'package:api/api/api.dart';
import 'package:api/modals/finance_modal.dart';
import 'package:api/modals/game_modal.dart';
import 'package:api/modals/gamecard_modal.dart';
import 'package:api/modals/product.dart';
import 'package:api/modals/quotes_modals.dart';
import 'package:api/modals/todo_modals.dart';
import 'package:api/modals/travel.dart';
import 'package:api/modals/weather_modal.dart';
import 'package:flutter/foundation.dart';
import '../modals/map_modal.dart';
import '../modals/modals.dart';
import '../modals/recipe_modal.dart';
import '../modals/tiktok.dart';

class AgentConteroller extends ChangeNotifier {
  AgentConteroller() {
    getagent();
    // Userapi();
    Productapi();
    Tiktokapi();
    Quotesapi();
    Recipeapi();
    Todoapi();
    Gameapi();
    Mapapi();
    Gamecardapi();
    financeapi();
    travelapi();
    weatherapi();
  }
  List<Post> alldata = [];
  // List<User> user = [];
  List<Product> product = [];
  List<Tiktok> tiktok = [];
  List<Quotes> allquotes = [];
  List<Recipe> allrecipe = [];
  List<Todo> alltodo = [];
  List<Game> allgame = [];
  List<PurpleMap> allmap = [];
  List<Gamecard> allgamecard = [];
  List<Finance> allfinance = [];
  List<Travel> alltravel = [];
  List<Weather> allweather = [];
  get user => null;
  Future<void> getagent() async {
    alldata = await ApiHelper.apiHelper.getdataapi();

    notifyListeners();
  }

  // Future<void> Userapi() async {
  //   user = await ApiHelper.apiHelper.getuserapi();
  //
  //   notifyListeners();
  // }

  Future<void> Productapi() async {
    product = await ApiHelper.apiHelper.Productapi();

    notifyListeners();
  }

  Future<void> Tiktokapi() async {
    tiktok = await ApiHelper.apiHelper.Tiktokapi();

    notifyListeners();
  }

  Future<void> Quotesapi() async {
    allquotes = await ApiHelper.apiHelper.Quotesapi();
    notifyListeners();
  }

  Future<void> Recipeapi() async {
    allrecipe = await ApiHelper.apiHelper.Recipeapi();
    notifyListeners();
  }

  Future<void> Todoapi() async {
    alltodo = await ApiHelper.apiHelper.Todoapi();
    notifyListeners();
  }

  Future<void> Gameapi() async {
    allgame = await ApiHelper.apiHelper.Gameapi();
  }

  Future<void> Mapapi() async {
    allmap = await ApiHelper.apiHelper.Mapapi();
  }

  Future<void> Gamecardapi() async {
    allgamecard = await ApiHelper.apiHelper.GameCard();
  }

  Future<void> financeapi() async {
    allfinance = await ApiHelper.apiHelper.Financeapi();
  }

  Future<void> travelapi() async {
    alltravel = await ApiHelper.apiHelper.travelapi();
  }

  Future<void> weatherapi() async {
    allweather = await ApiHelper.apiHelper.weatherapi();
  }
}

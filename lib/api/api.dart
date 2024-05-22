import 'dart:convert';
import 'dart:developer';

import 'package:api/modals/finance_modal.dart';
import 'package:api/modals/game_modal.dart';
import 'package:api/modals/gamecard_modal.dart';
import 'package:api/modals/modals.dart';
import 'package:api/modals/quotes_modals.dart';
import 'package:api/modals/recipe_modal.dart';
import 'package:api/modals/todo_modals.dart';
import 'package:api/modals/travel.dart';
import 'package:api/modals/weather_modal.dart';

import 'package:http/http.dart' as http;

import '../modals/map_modal.dart';
import '../modals/product.dart';
import '../modals/tiktok.dart';

class ApiHelper {
  ApiHelper() {
    getdataapi();
    // getuserapi();
    Productapi();
    Tiktokapi();
    Quotesapi();
    Recipeapi();
    Todoapi();
    Gameapi();
    Mapapi();
    GameCard();
    Financeapi();
    travelapi();
    weatherapi();
  }

  ApiHelper._();

  String url = "https://reqres.in/api/users?page=2";
  String user = "https://reqres.in/api/users/2";
  String product = "https://dummyjson.com/products";
  String tiktok = "https://tiktok-api6.p.rapidapi.com/user/video  s";
  String quotes = "https://dummyjson.com/quotes";
  String recipe = "https://dummyjson.com/recipes";
  String todo = "https://dummyjson.com/todos";
  String game = "https://valorant-api.com/v1/weapons/skins";
  String map = "https://valorant-api.com/v1/maps";
  String gamecard = "https://valorant-api.com/v1/playercards";
  String finance =
      "https://seeking-alpha.p.rapidapi.com/market/get-realtime-quotes?sa_ids=612888,16123";
  String travel =
      "https://sky-scrapper.p.rapidapi.com/api/v1/flights/getNearByAirports?lat=19.242218017578125&lng=72.85846156046128";
  String weather =
      "https://weatherbit-v1-mashape.p.rapidapi.com/forecast/3hourly?lat=21.17&lon=72.83";

  static final ApiHelper apiHelper = ApiHelper();

  Future<List<Post>> getdataapi() async {
    List<Post> data = [];
    http.Response response = await http.get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      Map map = json.decode(response.body);
      List list = map['data'];
      data = list.map((e) => Post.fromJson(e)).toList();
    }
    return data;
  }

  // Future<List<User>> getuserapi() async {
  //   List<User> userdata = [];
  //   http.Response response = await http.get(
  //     Uri.parse(user),
  //   );
  //
  //   log("status:${response.statusCode}");
  //   if (response.statusCode == 200) {
  //     Map usermap = json.decode(response.body.toString());
  //     log('List"$usermap');
  //     List userlist = usermap['data'];
  //     userdata = userlist.map((e) => User.fromJson(e)).toList();
  //   }
  //   return userdata;
  // }

  Future<List<Product>> Productapi() async {
    List<Product> productdata = [];
    http.Response response = await http.get(
      Uri.parse(product),
    );
    if (response.statusCode == 200) {
      Map map = jsonDecode(response.body.toString());
      List data = map["products"];
      productdata = data.map((e) => Product.fromJson(e)).toList();
    }
    return productdata;
  }

  Future<List<Tiktok>> Tiktokapi() async {
    List<Tiktok> tiktokdata = [];
    http.Response response = await http.get(
      Uri.parse(tiktok),
      headers: {
        'X-RapidAPI-Key': 'dff6299cd1msheb79bd4d6624e6ep1ba413jsn9285b659abfc',
        'X-RapidAPI-Host': 'tiktok-api6.p.rapidapi.com'
      },
    );

    if (response.statusCode == 200) {
      Map tiktokmap = jsonDecode(response.body.toString());

      List tiktoklist = tiktokmap["videos"];
      tiktokdata = tiktoklist.map((e) => Tiktok.fromJson(e)).toList();
    }
    return tiktokdata;
  }

  Future<List<Quotes>> Quotesapi() async {
    List<Quotes> allquotes = [];
    http.Response response = await http.get(
      Uri.parse(quotes),
    );
    if (response.statusCode == 200) {
      Map quotesmap = jsonDecode(response.body);
      List quoteslist = quotesmap['quotes'];
      allquotes = quoteslist.map((e) => Quotes.fromJson(e)).toList();
    }
    return allquotes;
  }

  Future<List<Recipe>> Recipeapi() async {
    List<Recipe> allrecipe = [];
    http.Response response = await http.get(
      Uri.parse(recipe),
    );
    if (response.statusCode == 200) {
      Map recipemap = jsonDecode(response.body);
      List recipelist = recipemap['recipes'];
      allrecipe = recipelist.map((e) => Recipe.fromJson(e)).toList();
    }
    return allrecipe;
  }

  Future<List<Todo>> Todoapi() async {
    List<Todo> alltodo = [];
    http.Response response = await http.get(
      Uri.parse(todo),
    );
    if (response.statusCode == 200) {
      Map todomap = jsonDecode(response.body);
      List todolist = todomap['todos'];
      alltodo = todolist.map((e) => Todo.fromJson(e)).toList();
    }
    return alltodo;
  }

  Future<List<Game>> Gameapi() async {
    List<Game> allgame = [];
    http.Response response = await http.get(
      Uri.parse(game),
    );

    if (response.statusCode == 200) {
      Map gamemap = jsonDecode(response.body.toString());
      List gamelist = gamemap['data'];
      allgame = gamelist.map((e) => Game.fromJson(e)).toList();
    } else {
      log('error:${response.statusCode}');
    }
    return allgame;
  }

  Future<List<PurpleMap>> Mapapi() async {
    List<PurpleMap> allmap = [];
    http.Response response = await http.get(
      Uri.parse(map),
    );

    if (response.statusCode == 200) {
      Map modemap = jsonDecode(response.body.toString());

      List modelist = modemap['data'];
      allmap = modelist.map((e) => PurpleMap.fromJson(e)).toList();
    }
    return allmap;
  }

  Future<List<Gamecard>> GameCard() async {
    List<Gamecard> allgamecard = [];
    http.Response response = await http.get(
      Uri.parse(gamecard),
    );
    if (response.statusCode == 200) {
      Map gamecardmap = jsonDecode(response.body.toString());
      List gamedardlist = gamecardmap['data'];
      allgamecard = gamedardlist.map((e) => Gamecard.fromJson(e)).toList();
    }
    return allgamecard;
  }

  Future<List<Finance>> Financeapi() async {
    List<Finance> allfinance = [];
    http.Response response = await http.get(Uri.parse(finance), headers: {
      'X-RapidAPI-Key': 'dff6299cd1msheb79bd4d6624e6ep1ba413jsn9285b659abfc',
      'X-RapidAPI-Host': 'seeking-alpha.p.rapidapi.com'
    });
    if (response.statusCode == 200) {
      Map financemap = jsonDecode(response.body.toString());
      List financelist = financemap['real_time_quotes'];
      allfinance = financelist.map((e) => Finance.fromJson(e)).toList();
    }
    return allfinance;
  }

  Future<List<Travel>> travelapi() async {
    List<Travel> alltravel = [];
    http.Response response = await http.get(
      Uri.parse(travel),
      headers: {
        'X-RapidAPI-Key': 'dff6299cd1msheb79bd4d6624e6ep1ba413jsn9285b659abfc',
        'X-RapidAPI-Host': 'sky-scrapper.p.rapidapi.com'
      },
    );

    if (response.statusCode == 200) {
      Map travelmap = jsonDecode(response.body.toString());
      Map travellist = travelmap['data'];
      List tar = travellist['nearby'];
      log('List travel"$travellist');
      alltravel = tar.map((e) => Travel.fromJson(e)).toList();
    } else {
      log("status travel:${response.statusCode}");
    }
    return alltravel;
  }

  Future<List<Weather>> weatherapi() async {
    List<Weather> allweather = [];
    http.Response response = await http.get(Uri.parse(weather), headers: {
      'X-RapidAPI-Key': 'dff6299cd1msheb79bd4d6624e6ep1ba413jsn9285b659abfc',
      'X-RapidAPI-Host': 'weatherbit-v1-mashape.p.rapidapi.com'
    });
    if (response.statusCode == 200) {
      Map weathermap = jsonDecode(response.body.toString());
      List weatherlist = weathermap['data'];
      log('List weather"$weatherlist');
      allweather = weatherlist.map((e) => Weather.fromJson(e)).toList();
    } else {
      log("status weather:${response.statusCode}");
    }
    return allweather;
  }
}

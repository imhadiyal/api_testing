class Travel {
  Presentation presentation;
  Navigation navigation;

  Travel({
    required this.presentation,
    required this.navigation,
  });

  factory Travel.fromJson(Map<String, dynamic> json) => Travel(
        presentation: Presentation.fromJson(json["presentation"]),
        navigation: Navigation.fromJson(json["navigation"]),
      );

  Map<String, dynamic> toJson() => {
        "presentation": presentation.toJson(),
        "navigation": navigation.toJson(),
      };
}

class Navigation {
  String entityId;
  String entityType;
  String localizedName;
  RelevantFlightParams relevantFlightParams;
  RelevantHotelParams relevantHotelParams;

  Navigation({
    required this.entityId,
    required this.entityType,
    required this.localizedName,
    required this.relevantFlightParams,
    required this.relevantHotelParams,
  });

  factory Navigation.fromJson(Map<String, dynamic> json) => Navigation(
        entityId: json["entityId"],
        entityType: json["entityType"],
        localizedName: json["localizedName"],
        relevantFlightParams:
            RelevantFlightParams.fromJson(json["relevantFlightParams"]),
        relevantHotelParams:
            RelevantHotelParams.fromJson(json["relevantHotelParams"]),
      );

  Map<String, dynamic> toJson() => {
        "entityId": entityId,
        "entityType": entityType,
        "localizedName": localizedName,
        "relevantFlightParams": relevantFlightParams.toJson(),
        "relevantHotelParams": relevantHotelParams.toJson(),
      };
}

class RelevantFlightParams {
  String skyId;
  String entityId;
  String flightPlaceType;
  String localizedName;

  RelevantFlightParams({
    required this.skyId,
    required this.entityId,
    required this.flightPlaceType,
    required this.localizedName,
  });

  factory RelevantFlightParams.fromJson(Map<String, dynamic> json) =>
      RelevantFlightParams(
        skyId: json["skyId"],
        entityId: json["entityId"],
        flightPlaceType: json["flightPlaceType"],
        localizedName: json["localizedName"],
      );

  Map<String, dynamic> toJson() => {
        "skyId": skyId,
        "entityId": entityId,
        "flightPlaceType": flightPlaceType,
        "localizedName": localizedName,
      };
}

class RelevantHotelParams {
  String entityId;
  String entityType;
  String localizedName;

  RelevantHotelParams({
    required this.entityId,
    required this.entityType,
    required this.localizedName,
  });

  factory RelevantHotelParams.fromJson(Map<String, dynamic> json) =>
      RelevantHotelParams(
        entityId: json["entityId"],
        entityType: json["entityType"],
        localizedName: json["localizedName"],
      );

  Map<String, dynamic> toJson() => {
        "entityId": entityId,
        "entityType": entityType,
        "localizedName": localizedName,
      };
}

class Presentation {
  String title;
  String suggestionTitle;
  String subtitle;

  Presentation({
    required this.title,
    required this.suggestionTitle,
    required this.subtitle,
  });

  factory Presentation.fromJson(Map<String, dynamic> json) => Presentation(
        title: json["title"],
        suggestionTitle: json["suggestionTitle"],
        subtitle: json["subtitle"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "suggestionTitle": suggestionTitle,
        "subtitle": subtitle,
      };
}

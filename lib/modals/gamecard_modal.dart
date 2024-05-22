class Gamecard {
  String uuid;
  String displayName;
  bool isHiddenIfNotOwned;
  dynamic themeUuid;
  String displayIcon;
  String smallArt;
  String wideArt;
  String largeArt;
  String assetPath;

  Gamecard({
    required this.uuid,
    required this.displayName,
    required this.isHiddenIfNotOwned,
    required this.themeUuid,
    required this.displayIcon,
    required this.smallArt,
    required this.wideArt,
    required this.largeArt,
    required this.assetPath,
  });

  factory Gamecard.fromJson(Map<String, dynamic> json) => Gamecard(
        uuid: json["uuid"],
        displayName: json["displayName"],
        isHiddenIfNotOwned: json["isHiddenIfNotOwned"],
        themeUuid: json["themeUuid"],
        displayIcon: json["displayIcon"],
        smallArt: json["smallArt"],
        wideArt: json["wideArt"],
        largeArt: json["largeArt"],
        assetPath: json["assetPath"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "isHiddenIfNotOwned": isHiddenIfNotOwned,
        "themeUuid": themeUuid,
        "displayIcon": displayIcon,
        "smallArt": smallArt,
        "wideArt": wideArt,
        "largeArt": largeArt,
        "assetPath": assetPath,
      };
}

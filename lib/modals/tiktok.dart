class Tiktok {
  String videoId;
  String description;
  int createTime;
  Author author;
  String authorId;
  AuthorName authorName;
  Statistics statistics;
  String cover;
  String? downloadUrl;
  String? unwatermarkedDownloadUrl;
  VideoDefinition? videoDefinition;
  dynamic format;
  int? bitrate;
  int duration;
  String avatarThumb;
  dynamic images;
  String cookies;
  List<Subtitle>? subtitles;

  Tiktok({
    required this.videoId,
    required this.description,
    required this.createTime,
    required this.author,
    required this.authorId,
    required this.authorName,
    required this.statistics,
    required this.cover,
    required this.downloadUrl,
    required this.unwatermarkedDownloadUrl,
    required this.videoDefinition,
    required this.format,
    required this.bitrate,
    required this.duration,
    required this.avatarThumb,
    required this.images,
    required this.cookies,
    required this.subtitles,
  });

  factory Tiktok.fromJson(Map<String, dynamic> json) => Tiktok(
        videoId: json["video_id"],
        description: json["description"],
        createTime: json["create_time"],
        author: authorValues.map[json["author"]]!,
        authorId: json["author_id"],
        authorName: authorNameValues.map[json["author_name"]]!,
        statistics: Statistics.fromJson(json["statistics"]),
        cover: json["cover"],
        downloadUrl: json["download_url"],
        unwatermarkedDownloadUrl: json["unwatermarked_download_url"],
        videoDefinition: videoDefinitionValues.map[json["video_definition"]]!,
        format: json["format"],
        bitrate: json["bitrate"],
        duration: json["duration"],
        avatarThumb: json["avatar_thumb"],
        images: json["images"],
        cookies: json["cookies"],
        subtitles: json["subtitles"] == null
            ? []
            : List<Subtitle>.from(
                json["subtitles"]!.map((x) => Subtitle.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "video_id": videoId,
        "description": description,
        "create_time": createTime,
        "author": authorValues.reverse[author],
        "author_id": authorId,
        "author_name": authorNameValues.reverse[authorName],
        "statistics": statistics.toJson(),
        "cover": cover,
        "download_url": downloadUrl,
        "unwatermarked_download_url": unwatermarkedDownloadUrl,
        "video_definition": videoDefinitionValues.reverse[videoDefinition],
        "format": format,
        "bitrate": bitrate,
        "duration": duration,
        "avatar_thumb": avatarThumb,
        "images": images,
        "cookies": cookies,
        "subtitles": subtitles == null
            ? []
            : List<dynamic>.from(subtitles!.map((x) => x.toJson())),
      };
}

enum Author { MRBEAST }

final authorValues = EnumValues({"mrbeast": Author.MRBEAST});

enum AuthorName { MR_BEAST }

final authorNameValues = EnumValues({"MrBeast": AuthorName.MR_BEAST});

class Statistics {
  int numberOfComments;
  int numberOfHearts;
  int numberOfPlays;
  int numberOfReposts;
  int numberOfSaves;

  Statistics({
    required this.numberOfComments,
    required this.numberOfHearts,
    required this.numberOfPlays,
    required this.numberOfReposts,
    required this.numberOfSaves,
  });

  factory Statistics.fromJson(Map<String, dynamic> json) => Statistics(
        numberOfComments: json["number_of_comments"],
        numberOfHearts: json["number_of_hearts"],
        numberOfPlays: json["number_of_plays"],
        numberOfReposts: json["number_of_reposts"],
        numberOfSaves: json["number_of_saves"],
      );

  Map<String, dynamic> toJson() => {
        "number_of_comments": numberOfComments,
        "number_of_hearts": numberOfHearts,
        "number_of_plays": numberOfPlays,
        "number_of_reposts": numberOfReposts,
        "number_of_saves": numberOfSaves,
      };
}

class Subtitle {
  Format format;
  LanguageCodeName languageCodeName;
  String languageId;
  int size;
  Source source;
  String url;
  int urlExpire;
  String version;

  Subtitle({
    required this.format,
    required this.languageCodeName,
    required this.languageId,
    required this.size,
    required this.source,
    required this.url,
    required this.urlExpire,
    required this.version,
  });

  factory Subtitle.fromJson(Map<String, dynamic> json) => Subtitle(
        format: formatValues.map[json["Format"]]!,
        languageCodeName: languageCodeNameValues.map[json["LanguageCodeName"]]!,
        languageId: json["LanguageID"],
        size: json["Size"],
        source: sourceValues.map[json["Source"]]!,
        url: json["Url"],
        urlExpire: json["UrlExpire"],
        version: json["Version"],
      );

  Map<String, dynamic> toJson() => {
        "Format": formatValues.reverse[format],
        "LanguageCodeName": languageCodeNameValues.reverse[languageCodeName],
        "LanguageID": languageId,
        "Size": size,
        "Source": sourceValues.reverse[source],
        "Url": url,
        "UrlExpire": urlExpire,
        "Version": version,
      };
}

enum Format { WEBVTT }

final formatValues = EnumValues({"webvtt": Format.WEBVTT});

enum LanguageCodeName {
  ARA_SA,
  CMN_HANS_CN,
  DEU_DE,
  ENG_US,
  FRA_FR,
  IND_ID,
  ITA_IT,
  JPN_JP,
  KOR_KR,
  POR_PT,
  RUS_RU,
  SPA_ES,
  VIE_VN
}

final languageCodeNameValues = EnumValues({
  "ara-SA": LanguageCodeName.ARA_SA,
  "cmn-Hans-CN": LanguageCodeName.CMN_HANS_CN,
  "deu-DE": LanguageCodeName.DEU_DE,
  "eng-US": LanguageCodeName.ENG_US,
  "fra-FR": LanguageCodeName.FRA_FR,
  "ind-ID": LanguageCodeName.IND_ID,
  "ita-IT": LanguageCodeName.ITA_IT,
  "jpn-JP": LanguageCodeName.JPN_JP,
  "kor-KR": LanguageCodeName.KOR_KR,
  "por-PT": LanguageCodeName.POR_PT,
  "rus-RU": LanguageCodeName.RUS_RU,
  "spa-ES": LanguageCodeName.SPA_ES,
  "vie-VN": LanguageCodeName.VIE_VN
});

enum Source { ASR, MT }

final sourceValues = EnumValues({"ASR": Source.ASR, "MT": Source.MT});

enum VideoDefinition { THE_540_P, THE_720_P }

final videoDefinitionValues = EnumValues(
    {"540p": VideoDefinition.THE_540_P, "720p": VideoDefinition.THE_720_P});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

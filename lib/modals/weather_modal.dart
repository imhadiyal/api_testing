class Weather {
  String windCdir;
  String ozone;
  String pod;
  double pres;
  int cloudsHi;
  int cloudsLow;
  int cloudsMid;
  DateTime timestampUtc;
  double vis;
  DateTime timestampLocal;
  double windSpd;
  int snowDepth;
  String windCdirFull;
  double slp;
  String datetime;
  int ts;
  double dewpt;
  double uv;
  int windDir;
  double ghi;
  double dhi;
  int precip;
  double dni;
  WeatherClass weather;
  String temp;
  double windGustSpd;
  int snow;
  double solarRad;
  int rh;
  double appTemp;
  int clouds;
  int pop;

  Weather({
    required this.windCdir,
    required this.ozone,
    required this.pod,
    required this.pres,
    required this.cloudsHi,
    required this.cloudsLow,
    required this.cloudsMid,
    required this.timestampUtc,
    required this.vis,
    required this.timestampLocal,
    required this.windSpd,
    required this.snowDepth,
    required this.windCdirFull,
    required this.slp,
    required this.datetime,
    required this.ts,
    required this.dewpt,
    required this.uv,
    required this.windDir,
    required this.ghi,
    required this.dhi,
    required this.precip,
    required this.dni,
    required this.weather,
    required this.temp,
    required this.windGustSpd,
    required this.snow,
    required this.solarRad,
    required this.rh,
    required this.appTemp,
    required this.clouds,
    required this.pop,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        windCdir: json["wind_cdir"],
        ozone: json["ozone"]!.toString(),
        pod: json["pod"],
        pres: json["pres"]?.toDouble(),
        cloudsHi: json["clouds_hi"],
        cloudsLow: json["clouds_low"],
        cloudsMid: json["clouds_mid"],
        timestampUtc: DateTime.parse(json["timestamp_utc"]),
        vis: json["vis"]?.toDouble(),
        timestampLocal: DateTime.parse(json["timestamp_local"]),
        windSpd: json["wind_spd"]?.toDouble(),
        snowDepth: json["snow_depth"],
        windCdirFull: json["wind_cdir_full"],
        slp: json["slp"]?.toDouble(),
        datetime: json["datetime"],
        ts: json["ts"],
        dewpt: json["dewpt"]?.toDouble(),
        uv: json["uv"]?.toDouble(),
        windDir: json["wind_dir"],
        ghi: json["ghi"]?.toDouble(),
        dhi: json["dhi"]?.toDouble(),
        precip: json["precip"],
        dni: json["dni"]?.toDouble(),
        weather: WeatherClass.fromJson(json["weather"]),
        temp: json["temp"]!.toString(),
        windGustSpd: json["wind_gust_spd"]?.toDouble(),
        snow: json["snow"],
        solarRad: json["solar_rad"]?.toDouble(),
        rh: json["rh"],
        appTemp: json["app_temp"]?.toDouble(),
        clouds: json["clouds"],
        pop: json["pop"],
      );

  Map<String, dynamic> toJson() => {
        "wind_cdir": windCdir,
        "ozone": ozone,
        "pod": pod,
        "pres": pres,
        "clouds_hi": cloudsHi,
        "clouds_low": cloudsLow,
        "clouds_mid": cloudsMid,
        "timestamp_utc": timestampUtc.toIso8601String(),
        "vis": vis,
        "timestamp_local": timestampLocal.toIso8601String(),
        "wind_spd": windSpd,
        "snow_depth": snowDepth,
        "wind_cdir_full": windCdirFull,
        "slp": slp,
        "datetime": datetime,
        "ts": ts,
        "dewpt": dewpt,
        "uv": uv,
        "wind_dir": windDir,
        "ghi": ghi,
        "dhi": dhi,
        "precip": precip,
        "dni": dni,
        "weather": weather.toJson(),
        "temp": temp,
        "wind_gust_spd": windGustSpd,
        "snow": snow,
        "solar_rad": solarRad,
        "rh": rh,
        "app_temp": appTemp,
        "clouds": clouds,
        "pop": pop,
      };
}

class WeatherClass {
  int code;
  String icon;
  String description;

  WeatherClass({
    required this.code,
    required this.icon,
    required this.description,
  });

  factory WeatherClass.fromJson(Map<String, dynamic> json) => WeatherClass(
        code: json["code"],
        icon: json["icon"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "icon": icon,
        "description": description,
      };
}

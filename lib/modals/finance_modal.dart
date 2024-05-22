class Finance {
  int tickerId;
  int saId;
  String saSlug;
  String symbol;
  double high;
  double low;
  double open;
  double close;
  double prevClose;
  double last;
  int volume;
  DateTime lastTime;
  int marketCap;
  DateTime extTime;
  double extPrice;
  String extMarket;
  String info;
  String src;
  DateTime updatedAt;

  Finance({
    required this.tickerId,
    required this.saId,
    required this.saSlug,
    required this.symbol,
    required this.high,
    required this.low,
    required this.open,
    required this.close,
    required this.prevClose,
    required this.last,
    required this.volume,
    required this.lastTime,
    required this.marketCap,
    required this.extTime,
    required this.extPrice,
    required this.extMarket,
    required this.info,
    required this.src,
    required this.updatedAt,
  });

  factory Finance.fromJson(Map<String, dynamic> json) => Finance(
        tickerId: json["ticker_id"],
        saId: json["sa_id"],
        saSlug: json["sa_slug"],
        symbol: json["symbol"],
        high: json["high"]?.toDouble(),
        low: json["low"]?.toDouble(),
        open: json["open"]?.toDouble(),
        close: json["close"]?.toDouble(),
        prevClose: json["prev_close"]?.toDouble(),
        last: json["last"]?.toDouble(),
        volume: json["volume"],
        lastTime: DateTime.parse(json["last_time"]),
        marketCap: json["market_cap"],
        extTime: DateTime.parse(json["ext_time"]),
        extPrice: json["ext_price"]?.toDouble(),
        extMarket: json["ext_market"],
        info: json["info"],
        src: json["src"],
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "ticker_id": tickerId,
        "sa_id": saId,
        "sa_slug": saSlug,
        "symbol": symbol,
        "high": high,
        "low": low,
        "open": open,
        "close": close,
        "prev_close": prevClose,
        "last": last,
        "volume": volume,
        "last_time": lastTime.toIso8601String(),
        "market_cap": marketCap,
        "ext_time": extTime.toIso8601String(),
        "ext_price": extPrice,
        "ext_market": extMarket,
        "info": info,
        "src": src,
        "updated_at": updatedAt.toIso8601String(),
      };
}

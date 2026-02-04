import 'dart:convert';

ValenbisiResponse valenbisiResponseFromJson(String str) => ValenbisiResponse.fromJson(json.decode(str));

class ValenbisiResponse {
  final int totalCount;
  final List<ValenbisiStation> results;

  ValenbisiResponse({
    required this.totalCount,
    required this.results,
  });

  factory ValenbisiResponse.fromJson(Map<String, dynamic> json) => ValenbisiResponse(
    totalCount: json["total_count"] ?? 0,
    results: List<ValenbisiStation>.from(json["results"].map((x) => ValenbisiStation.fromJson(x))),
  );
}

class ValenbisiStation {
  final String address;
  final int number;
  final String open;
  final int available;
  final int free;
  final int total;
  final String ticket;
  final String updatedAt;
  final GeoPoint2D geoPoint2D;

  ValenbisiStation({
    required this.address,
    required this.number,
    required this.open,
    required this.available,
    required this.free,
    required this.total,
    required this.ticket,
    required this.updatedAt,
    required this.geoPoint2D,
  });

  bool get isStationOpen => open == "T";

  factory ValenbisiStation.fromJson(Map<String, dynamic> json) => ValenbisiStation(
    address: json["address"] ?? "Sin dirección",
    number: json["number"] ?? 0,
    open: json["open"] ?? "F",
    available: json["available"] ?? 0,
    free: json["free"] ?? 0,
    total: json["total"] ?? 0,
    ticket: json["ticket"] ?? "F",
    updatedAt: json["updated_at"] ?? "",
    geoPoint2D: GeoPoint2D.fromJson(json["geo_point_2d"]),
  );
}

class GeoPoint2D {
  final double lon;
  final double lat;

  GeoPoint2D({
    required this.lon,
    required this.lat,
  });

  factory GeoPoint2D.fromJson(Map<String, dynamic> json) => GeoPoint2D(
    lon: json["lon"]?.toDouble() ?? 0.0,
    lat: json["lat"]?.toDouble() ?? 0.0,
  );
}
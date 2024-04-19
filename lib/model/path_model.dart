class RoadPath {
  double? latitude;
  double? longitude;

  RoadPath({
    this.latitude,
    this.longitude,
  });

  RoadPath.fromJson(List<dynamic> json) {
    double lat = double.tryParse(json[1].toString()) ?? 0;
    double lon = double.tryParse(json[0].toString()) ?? 0;

    latitude = lat;
    longitude = lon;
  }

  @override
  String toString() {
    return '($latitude, $longitude)';
  }
}

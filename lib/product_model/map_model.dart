class MapValo {
  int? status;
  List<Data>? data;

  MapValo({
    this.status,
    this.data,
  });

  MapValo.fromJson(Map<String, dynamic> json) {
    status = json['status'] as int?;
    data = (json['data'] as List?)?.map((dynamic e) => Data.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['status'] = status;
    json['data'] = data?.map((e) => e.toJson()).toList();
    return json;
  }
}

class Data {
  String? uuid;
  String? displayName;
  String? narrativeDescription;
  String? tacticalDescription;
  String? coordinates;
  String? displayIcon;
  String? listViewIcon;
  String? splash;
  String? assetPath;
  String? mapUrl;
  double? xMultiplier;
  double? yMultiplier;
  double? xScalarToAdd;
  double? yScalarToAdd;
  List<Callouts>? callouts;

  Data({
    this.uuid,
    this.displayName,
    this.narrativeDescription,
    this.tacticalDescription,
    this.coordinates,
    this.displayIcon,
    this.listViewIcon,
    this.splash,
    this.assetPath,
    this.mapUrl,
    this.xMultiplier,
    this.yMultiplier,
    this.xScalarToAdd,
    this.yScalarToAdd,
    this.callouts,
  });

  Data.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'] as String?;
    displayName = json['displayName'] as String?;
    narrativeDescription = json['narrativeDescription'] as String?;
    tacticalDescription = json['tacticalDescription'] as String?;
    coordinates = json['coordinates'] as String?;
    displayIcon = json['displayIcon'] as String?;
    listViewIcon = json['listViewIcon'] as String?;
    splash = json['splash'] as String?;
    assetPath = json['assetPath'] as String?;
    mapUrl = json['mapUrl'] as String?;
    xMultiplier = json['xMultiplier'] as double?;
    yMultiplier = json['yMultiplier'] as double?;
    xScalarToAdd = json['xScalarToAdd'] as double?;
    yScalarToAdd = json['yScalarToAdd'] as double?;
    callouts = (json['callouts'] as List?)?.map((dynamic e) => Callouts.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['uuid'] = uuid;
    json['displayName'] = displayName;
    json['narrativeDescription'] = narrativeDescription;
    json['tacticalDescription'] = tacticalDescription;
    json['coordinates'] = coordinates;
    json['displayIcon'] = displayIcon;
    json['listViewIcon'] = listViewIcon;
    json['splash'] = splash;
    json['assetPath'] = assetPath;
    json['mapUrl'] = mapUrl;
    json['xMultiplier'] = xMultiplier;
    json['yMultiplier'] = yMultiplier;
    json['xScalarToAdd'] = xScalarToAdd;
    json['yScalarToAdd'] = yScalarToAdd;
    json['callouts'] = callouts?.map((e) => e.toJson()).toList();
    return json;
  }
}

class Callouts {
  String? regionName;
  String? superRegionName;
  Location? location;

  Callouts({
    this.regionName,
    this.superRegionName,
    this.location,
  });

  Callouts.fromJson(Map<String, dynamic> json) {
    regionName = json['regionName'] as String?;
    superRegionName = json['superRegionName'] as String?;
    location = (json['location'] as Map<String,dynamic>?) != null ? Location.fromJson(json['location'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['regionName'] = regionName;
    json['superRegionName'] = superRegionName;
    json['location'] = location?.toJson();
    return json;
  }
}

class Location {
  double? x;
  double? y;

  Location({
    this.x,
    this.y,
  });

  Location.fromJson(Map<String, dynamic> json) {
    x = json['x'] as double?;
    y = json['y'] as double?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['x'] = x;
    json['y'] = y;
    return json;
  }
}
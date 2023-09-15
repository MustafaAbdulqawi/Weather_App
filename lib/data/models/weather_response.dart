import 'dart:convert';
WeatherResponse weatherResponseFromJson(String str) => WeatherResponse.fromJson(json.decode(str));
class WeatherResponse {
  WeatherResponse({
      num? queryCost, 
      num? latitude, 
      num? longitude, 
      String? resolvedAddress, 
      String? address, 
      String? timezone, 
      num? tzoffset, 
      String? description, 
      List<Days>? days, 
      List<dynamic>? alerts, 
      CurrentConditions? currentConditions,}){
    _queryCost = queryCost;
    _latitude = latitude;
    _longitude = longitude;
    _resolvedAddress = resolvedAddress;
    _address = address;
    _timezone = timezone;
    _tzoffset = tzoffset;
    _description = description;
    _days = days;
    _alerts = alerts;
    _currentConditions = currentConditions;
}

  WeatherResponse.fromJson(dynamic json) {
    _queryCost = json['queryCost'];
    _latitude = json['latitude'];
    _longitude = json['longitude'];
    _resolvedAddress = json['resolvedAddress'];
    _address = json['address'];
    _timezone = json['timezone'];
    _tzoffset = json['tzoffset'];
    _description = json['description'];
    if (json['days'] != null) {
      _days = <Days>[];
      json['days'].forEach((v) {
        _days?.add(Days.fromJson(v)); // Use the correct type (Days)
      });
    }
    if (json['alerts'] != null) {
      _alerts = <dynamic>[];
      json['alerts'].forEach((v) {
        _alerts?.add(v); // Assuming alerts are of type dynamic
      });
    }
    _currentConditions = json['currentConditions'] != null ? CurrentConditions.fromJson(json['currentConditions']) : null;
  }

  num? _queryCost;
  num? _latitude;
  num? _longitude;
  String? _resolvedAddress;
  String? _address;
  String? _timezone;
  num? _tzoffset;
  String? _description;
  List<Days>? _days;
  List<dynamic>? _alerts;
  CurrentConditions? _currentConditions;

  num get queryCost => _queryCost ?? 0;
  num get latitude => _latitude ?? 0;
  num get longitude => _longitude ?? 0;
  String get resolvedAddress => _resolvedAddress ?? "";
  String get address => _address ??  "";
  String get timezone => _timezone ??  "";
  num get tzoffset => _tzoffset ?? 0;
  String get description => _description ??  "";
  List<Days> get days => _days ??  [];
  List<dynamic> get alerts => _alerts ?? [];
  CurrentConditions get currentConditions => _currentConditions ?? CurrentConditions();


}

CurrentConditions currentConditionsFromJson(String str) => CurrentConditions.fromJson(json.decode(str));
class CurrentConditions {
  CurrentConditions({
      String? datetime, 
      num? datetimeEpoch, 
      num? temp, 
      num? feelslike, 
      num? humidity, 
      num? dew, 
      num? precip, 
      num? precipprob, 
      num? snow, 
      num? snowdepth, 
      dynamic preciptype, 
      num? windgust, 
      num? windspeed, 
      num? winddir, 
      num? pressure, 
      num? visibility, 
      num? cloudcover, 
      num? solarradiation, 
      num? solarenergy, 
      num? uvindex, 
      num? severerisk, 
      String? conditions, 
      String? icon, 
      List<dynamic>? stations, 
      String? source, 
      String? sunrise, 
      num? sunriseEpoch, 
      String? sunset, 
      num? sunsetEpoch, 
      num? moonphase,}){
    _datetime = datetime;
    _datetimeEpoch = datetimeEpoch;
    _temp = temp;
    _feelslike = feelslike;
    _humidity = humidity;
    _dew = dew;
    _precip = precip;
    _precipprob = precipprob;
    _snow = snow;
    _snowdepth = snowdepth;
    _preciptype = preciptype;
    _windgust = windgust;
    _windspeed = windspeed;
    _winddir = winddir;
    _pressure = pressure;
    _visibility = visibility;
    _cloudcover = cloudcover;
    _solarradiation = solarradiation;
    _solarenergy = solarenergy;
    _uvindex = uvindex;
    _severerisk = severerisk;
    _conditions = conditions;
    _icon = icon;
    _stations = stations;
    _source = source;
    _sunrise = sunrise;
    _sunriseEpoch = sunriseEpoch;
    _sunset = sunset;
    _sunsetEpoch = sunsetEpoch;
    _moonphase = moonphase;
}

  CurrentConditions.fromJson(dynamic json) {
    _datetime = json['datetime'];
    _datetimeEpoch = json['datetimeEpoch'];
    _temp = json['temp'];
    _feelslike = json['feelslike'];
    _humidity = json['humidity'];
    _dew = json['dew'];
    _precip = json['precip'];
    _precipprob = json['precipprob'];
    _snow = json['snow'];
    _snowdepth = json['snowdepth'];
    _preciptype = json['preciptype'];
    _windgust = json['windgust'];
    _windspeed = json['windspeed'];
    _winddir = json['winddir'];
    _pressure = json['pressure'];
    _visibility = json['visibility'];
    _cloudcover = json['cloudcover'];
    _solarradiation = json['solarradiation'];
    _solarenergy = json['solarenergy'];
    _uvindex = json['uvindex'];
    _severerisk = json['severerisk'];
    _conditions = json['conditions'];
    _icon = json['icon'];
    if (json['stations'] != null) {
      _stations = <String>[];
      json['stations'].forEach((v) {
        _stations?.add(v.toString()); // Assuming stations are strings
      });

    }
    _source = json['source'];
    _sunrise = json['sunrise'];
    _sunriseEpoch = json['sunriseEpoch'];
    _sunset = json['sunset'];
    _sunsetEpoch = json['sunsetEpoch'];
    _moonphase = json['moonphase'];
  }
  String? _datetime;
  num? _datetimeEpoch;
  num? _temp;
  num? _feelslike;
  num? _humidity;
  num? _dew;
  num? _precip;
  num? _precipprob;
  num? _snow;
  num? _snowdepth;
  dynamic _preciptype;
  num? _windgust;
  num? _windspeed;
  num? _winddir;
  num? _pressure;
  num? _visibility;
  num? _cloudcover;
  num? _solarradiation;
  num? _solarenergy;
  num? _uvindex;
  num? _severerisk;
  String? _conditions;
  String? _icon;
  List<dynamic>? _stations;
  String? _source;
  String? _sunrise;
  num? _sunriseEpoch;
  String? _sunset;
  num? _sunsetEpoch;
  num? _moonphase;

  String get datetime => _datetime ?? "";
  num get datetimeEpoch => _datetimeEpoch ?? 0;
  num get temp => _temp ?? 0;
  num get feelslike => _feelslike ?? 0;
  num get humidity => _humidity ?? 0;
  num get dew => _dew ?? 0;
  num get precip => _precip ?? 0;
  num get precipprob => _precipprob ?? 0;
  num get snow => _snow ?? 0;
  num get snowdepth => _snowdepth ?? 0;
  dynamic get preciptype => _preciptype;
  num get windgust => _windgust ?? 0;
  num get windspeed => _windspeed ?? 0;
  num get winddir => _winddir ?? 0;
  num get pressure => _pressure ?? 0;
  num get visibility => _visibility ?? 0;
  num get cloudcover => _cloudcover ?? 0;
  num get solarradiation => _solarradiation ?? 0;
  num get solarenergy => _solarenergy ?? 0;
  num get uvindex => _uvindex ?? 0;
  num get severerisk => _severerisk ?? 0;
  String get conditions => _conditions ?? "";
  String get icon => _icon ?? "";
  List<dynamic> get stations => _stations ?? [];
  String get source => _source ?? "";
  String get sunrise => _sunrise ?? "";
  num get sunriseEpoch => _sunriseEpoch ?? 0;
  String get sunset => _sunset ?? "";
  num get sunsetEpoch => _sunsetEpoch ?? 0;
  num get moonphase => _moonphase ?? 0;


}

Days daysFromJson(String str) => Days.fromJson(json.decode(str));

class Days {
  Days({
      String? datetime, 
      num? datetimeEpoch, 
      num? tempmax, 
      num? tempmin, 
      num? temp, 
      num? feelslikemax, 
      num? feelslikemin, 
      num? feelslike, 
      num? dew, 
      num? humidity, 
      num? precip, 
      num? precipprob, 
      num? precipcover, 
      dynamic preciptype, 
      num? snow, 
      num? snowdepth, 
      num? windgust, 
      num? windspeed, 
      num? winddir, 
      num? pressure, 
      num? cloudcover, 
      num? visibility, 
      num? solarradiation, 
      num? solarenergy, 
      num? uvindex, 
      num? severerisk, 
      String? sunrise, 
      num? sunriseEpoch, 
      String? sunset, 
      num? sunsetEpoch, 
      num? moonphase, 
      String? conditions, 
      String? description, 
      String? icon, 
      List<String>? stations, 
      String? source, 
      List<Hours>? hours,}){
    _datetime = datetime;
    _datetimeEpoch = datetimeEpoch;
    _tempmax = tempmax;
    _tempmin = tempmin;
    _temp = temp;
    _feelslikemax = feelslikemax;
    _feelslikemin = feelslikemin;
    _feelslike = feelslike;
    _dew = dew;
    _humidity = humidity;
    _precip = precip;
    _precipprob = precipprob;
    _precipcover = precipcover;
    _preciptype = preciptype;
    _snow = snow;
    _snowdepth = snowdepth;
    _windgust = windgust;
    _windspeed = windspeed;
    _winddir = winddir;
    _pressure = pressure;
    _cloudcover = cloudcover;
    _visibility = visibility;
    _solarradiation = solarradiation;
    _solarenergy = solarenergy;
    _uvindex = uvindex;
    _severerisk = severerisk;
    _sunrise = sunrise;
    _sunriseEpoch = sunriseEpoch;
    _sunset = sunset;
    _sunsetEpoch = sunsetEpoch;
    _moonphase = moonphase;
    _conditions = conditions;
    _description = description;
    _icon = icon;
    _stations = stations;
    _source = source;
    _hours = hours;
}

  Days.fromJson(dynamic json) {
    _datetime = json['datetime'];
    _datetimeEpoch = json['datetimeEpoch'];
    _tempmax = json['tempmax'];
    _tempmin = json['tempmin'];
    _temp = json['temp'];
    _feelslikemax = json['feelslikemax'];
    _feelslikemin = json['feelslikemin'];
    _feelslike = json['feelslike'];
    _dew = json['dew'];
    _humidity = json['humidity'];
    _precip = json['precip'];
    _precipprob = json['precipprob'];
    _precipcover = json['precipcover'];
    _preciptype = json['preciptype'];
    _snow = json['snow'];
    _snowdepth = json['snowdepth'];
    _windgust = json['windgust'];
    _windspeed = json['windspeed'];
    _winddir = json['winddir'];
    _pressure = json['pressure'];
    _cloudcover = json['cloudcover'];
    _visibility = json['visibility'];
    _solarradiation = json['solarradiation'];
    _solarenergy = json['solarenergy'];
    _uvindex = json['uvindex'];
    _severerisk = json['severerisk'];
    _sunrise = json['sunrise'];
    _sunriseEpoch = json['sunriseEpoch'];
    _sunset = json['sunset'];
    _sunsetEpoch = json['sunsetEpoch'];
    _moonphase = json['moonphase'];
    _conditions = json['conditions'];
    _description = json['description'];
    _icon = json['icon'];
    _stations = json['stations'] != null ? json['stations'].cast<String>() : [];
    _source = json['source'];
    if (json['hours'] != null) {
      _hours = [];
      json['hours'].forEach((v) {
        _hours?.add(Hours.fromJson(v));
      });
    }
  }
  String? _datetime;
  num? _datetimeEpoch;
  num? _tempmax;
  num? _tempmin;
  num? _temp;
  num? _feelslikemax;
  num? _feelslikemin;
  num? _feelslike;
  num? _dew;
  num? _humidity;
  num? _precip;
  num? _precipprob;
  num? _precipcover;
  dynamic _preciptype;
  num? _snow;
  num? _snowdepth;
  num? _windgust;
  num? _windspeed;
  num? _winddir;
  num? _pressure;
  num? _cloudcover;
  num? _visibility;
  num? _solarradiation;
  num? _solarenergy;
  num? _uvindex;
  num? _severerisk;
  String? _sunrise;
  num? _sunriseEpoch;
  String? _sunset;
  num? _sunsetEpoch;
  num? _moonphase;
  String? _conditions;
  String? _description;
  String? _icon;
  List<String>? _stations;
  String? _source;
  List<Hours>? _hours;

  String get datetime => _datetime ?? "";
  num get datetimeEpoch => _datetimeEpoch ?? 0;
  num get tempmax => _tempmax ?? 0;
  num get tempmin => _tempmin ?? 0;
  num get temp => _temp ?? 0;
  num get feelslikemax => _feelslikemax ?? 0;
  num get feelslikemin => _feelslikemin ?? 0;
  num get feelslike => _feelslike ?? 0;
  num get dew => _dew ?? 0;
  num get humidity => _humidity ?? 0;
  num get precip => _precip ?? 0;
  num get precipprob => _precipprob ?? 0;
  num get precipcover => _precipcover ?? 0;
  dynamic get preciptype => _preciptype;
  num get snow => _snow ?? 0;
  num get snowdepth => _snowdepth ?? 0;
  num get windgust => _windgust ?? 0;
  num get windspeed => _windspeed ?? 0;
  num get winddir => _winddir ?? 0;
  num get pressure => _pressure ?? 0;
  num get cloudcover => _cloudcover ?? 0;
  num get visibility => _visibility ?? 0;
  num get solarradiation => _solarradiation ?? 0;
  num get solarenergy => _solarenergy ?? 0;
  num get uvindex => _uvindex ?? 0;
  num get severerisk => _severerisk ?? 0;
  String get sunrise => _sunrise ?? '';
  num get sunriseEpoch => _sunriseEpoch ?? 0;
  String get sunset => _sunset ?? "";
  num get sunsetEpoch => _sunsetEpoch ?? 0;
  num get moonphase => _moonphase ?? 0;
  String get conditions => _conditions ?? "";
  String get description => _description ?? "";
  String get icon => _icon ?? "";
  List<String> get stations => _stations ?? [];
  String get source => _source ?? "";
  List<Hours> get hours => _hours ?? [];


}

Hours hoursFromJson(String str) => Hours.fromJson(json.decode(str));
class Hours {
  Hours({
      String? datetime, 
      num? datetimeEpoch, 
      num? temp, 
      num? feelslike, 
      num? humidity, 
      num? dew, 
      num? precip, 
      num? precipprob, 
      num? snow, 
      num? snowdepth, 
      dynamic preciptype, 
      num? windgust, 
      num? windspeed, 
      num? winddir, 
      num? pressure, 
      num? visibility, 
      num? cloudcover, 
      num? solarradiation, 
      num? solarenergy, 
      num? uvindex, 
      num? severerisk, 
      String? conditions, 
      String? icon, 
      List<String>? stations, 
      String? source,}){
    _datetime = datetime;
    _datetimeEpoch = datetimeEpoch;
    _temp = temp;
    _feelslike = feelslike;
    _humidity = humidity;
    _dew = dew;
    _precip = precip;
    _precipprob = precipprob;
    _snow = snow;
    _snowdepth = snowdepth;
    _preciptype = preciptype;
    _windgust = windgust;
    _windspeed = windspeed;
    _winddir = winddir;
    _pressure = pressure;
    _visibility = visibility;
    _cloudcover = cloudcover;
    _solarradiation = solarradiation;
    _solarenergy = solarenergy;
    _uvindex = uvindex;
    _severerisk = severerisk;
    _conditions = conditions;
    _icon = icon;
    _stations = stations;
    _source = source;
}

  Hours.fromJson(dynamic json) {
    _datetime = json['datetime'];
    _datetimeEpoch = json['datetimeEpoch'];
    _temp = json['temp'];
    _feelslike = json['feelslike'];
    _humidity = json['humidity'];
    _dew = json['dew'];
    _precip = json['precip'];
    _precipprob = json['precipprob'];
    _snow = json['snow'];
    _snowdepth = json['snowdepth'];
    _preciptype = json['preciptype'];
    _windgust = json['windgust'];
    _windspeed = json['windspeed'];
    _winddir = json['winddir'];
    _pressure = json['pressure'];
    _visibility = json['visibility'];
    _cloudcover = json['cloudcover'];
    _solarradiation = json['solarradiation'];
    _solarenergy = json['solarenergy'];
    _uvindex = json['uvindex'];
    _severerisk = json['severerisk'];
    _conditions = json['conditions'];
    _icon = json['icon'];
    _stations = json['stations'] != null ? json['stations'].cast<String>() : [];
    _source = json['source'];
  }
  String? _datetime;
  num? _datetimeEpoch;
  num? _temp;
  num? _feelslike;
  num? _humidity;
  num? _dew;
  num? _precip;
  num? _precipprob;
  num? _snow;
  num? _snowdepth;
  dynamic _preciptype;
  num? _windgust;
  num? _windspeed;
  num? _winddir;
  num? _pressure;
  num? _visibility;
  num? _cloudcover;
  num? _solarradiation;
  num? _solarenergy;
  num? _uvindex;
  num? _severerisk;
  String? _conditions;
  String? _icon;
  List<String>? _stations;
  String? _source;

  String get datetime => _datetime ?? "";
  num get datetimeEpoch => _datetimeEpoch ?? 0;
  num get temp => _temp ?? 0;
  num get feelslike => _feelslike ?? 0;
  num get humidity => _humidity ?? 0;
  num get dew => _dew ?? 0;
  num get precip => _precip ?? 0;
  num get precipprob => _precipprob ?? 0;
  num get snow => _snow ?? 0;
  num get snowdepth => _snowdepth ?? 0;
  dynamic get preciptype => _preciptype;
  num get windgust => _windgust ?? 0;
  num get windspeed => _windspeed ?? 0;
  num get winddir => _winddir ?? 0;
  num get pressure => _pressure ?? 0;
  num get visibility => _visibility ?? 0;
  num get cloudcover => _cloudcover ?? 0;
  num get solarradiation => _solarradiation ?? 0;
  num get solarenergy => _solarenergy ?? 0;
  num get uvindex => _uvindex ?? 0;
  num get severerisk => _severerisk ?? 0;
  String get conditions => _conditions ?? "";
  String get icon => _icon ?? "";
  List<String> get stations => _stations ?? [];
  String get source => _source ?? "";


}
import 'dart:convert';
import 'dart:developer';

import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

import 'package:weather/models/weather_forecast_daily.dart';
import 'package:weather/utilities/constants.dart';
import 'package:weather/utilities/location.dart';

class WeatherApi {
  Future<WeatherForecast> fetchWeatherForecast(
      {String? city, bool? isCity}) async {
    Location location = Location();
    await location.getCurrentLocation();
   // Position position = await location._determinePosition();
    Map<String, String?> parameters;

    if (isCity == true) {
      var queryParameters = {
        'APPID': Constants.WEATHER_APP_ID,
        'q': city,
        'units': 'metric',
      };
      parameters = queryParameters;
    } else {
      var queryParameters = {
        'APPID': Constants.WEATHER_APP_ID,
        'lat': location.latitude.toString(),
        'lon': location.longitude.toString(),
        'units': 'metric',
      };
      parameters = queryParameters;
    }
    var uri = Uri.https(Constants.WEATHER_BASE_URL_DOMAIN,
        Constants.WEATHER_FORECAST_PATH, parameters);
    print('request: ${uri.toString()}');
    log('request: ${uri.toString()}');
    var response = await http.get(uri);
    log('response: ${response.body}');

    if (response.statusCode == 200) {
      return WeatherForecast.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load weather forecast');
    }
  }
}

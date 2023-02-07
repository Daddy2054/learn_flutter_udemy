import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import 'package:weather/models/weather_forecast_daily.dart';
import 'package:weather/utilities/constants.dart';

class WeatherApi {
  Future<WeatherForecast> fetchWeatherForecastWithCity({String? city}) async {
    var queryParameters = {
      'APPID': Constants.WEATHER_APP_ID,
      'q': city,
      'units': 'metric',
    };
    var uri = Uri.https(Constants.WEATHER_BASE_URL_DOMAIN,
        Constants.WEATHER_FORECAST_PATH, queryParameters);
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

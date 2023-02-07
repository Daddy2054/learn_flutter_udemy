import 'dart:convert';
import 'dart:developer';

import 'package:wheater/utilities/constants.dart';
import 'package:http/http.dart' as http;
import 'package:wheater/models/weather_forecast_daily.dart';

class WeatherApi {
  Future<WeatherForecast> fetchWeatherForecastWithCity({String? city}) async {
    var queryParameters = {
      'APPID': Constants.WEATHER_APP_ID,
      'q': city,
      'units': 'metric',
    };
    var uri = Uri.https(Constants.WEATHER_BASE_URL_DOMAIN,
        Constants.WEATHER_FORECAST_PATH, queryParameters);

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

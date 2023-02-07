import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather/models/weather_forecast_daily.dart';
import 'package:weather/utilities/forecast_util.dart';

class DetaiView extends StatelessWidget {
  final AsyncSnapshot<WeatherForecast> snapshot;
  const DetaiView({super.key, required this.snapshot});

  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot.data?.list;

    var humidity = forecastList![0].humidity;
    var pressure = forecastList[0].pressure! * 0.750062;
var wind = forecastList[0].speed;
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Util.getItem(FontAwesomeIcons.temperatureThreeQuarters,
              pressure.round(), 'mm Hg'),
              Util.getItem(FontAwesomeIcons.cloudRain, humidity!,'%'),
              Util.getItem(FontAwesomeIcons.wind, wind!.round(), 'm/s'),
              
        ],
      ),
    );
  }
}

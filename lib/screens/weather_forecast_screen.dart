import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:wheater/api/weather_api.dart';
import '../models/weather_forecast_daily.dart';

class WeatherForecastScreen extends StatefulWidget {
  final WeatherForecast? locationWeather;
  const WeatherForecastScreen({Key? key, this.locationWeather})
      : super(key: key);

  @override
  State<WeatherForecastScreen> createState() => _WeatherForecastScreenState();
}

class _WeatherForecastScreenState extends State<WeatherForecastScreen> {
  late Future<WeatherForecast> forecastObject;
  String _cityName = 'London';

  @override
  void initState() {
    super.initState();
    forecastObject = WeatherApi().fetchWeatherForecastWithCity(city: _cityName);
    forecastObject.then((weather) {
      print(weather.list?[0].weather?[0].main);
      print(weather.list?[0].weather?[0].description);
    });
    /*      if (widget.locationWeather != null) {
      forecastObject = Future.value(widget.locationWeather);
    } */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('openweathermap.org'),
          backgroundColor: Colors.black87,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.my_location),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.location_city),
            ),
          ],
        ),
        body: ListView(children: <Widget>[
          Container(
            child: FutureBuilder<WeatherForecast>(
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text('All good',
                        style: Theme.of(context).textTheme.displayLarge);
                  } else {
                    return Center(
                      child: SpinKitDoubleBounce(
                        color: Colors.black87,
                        size: 100.0,
                      ),
                    );
                  }
                },
                future: forecastObject),
          )
        ]));
  }
}

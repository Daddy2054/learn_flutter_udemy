import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:weather/models/weather_forecast_daily.dart';
import 'package:weather/widgets/forecast_card.dart';

class BottomListview extends StatelessWidget {
  final AsyncSnapshot<WeatherForecast> snapshot;
  const BottomListview({super.key, required this.snapshot});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '7-Day Weather Forecast'.toUpperCase(),
          style: TextStyle(
            fontSize: 20,
            color: Colors.black87,
          ),
        ),
        Container(
          height: 140,
          padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 16,
          ),
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              width: 8,
            ),
            itemCount: snapshot.data!.list!.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              width: MediaQuery.of(context).size.width / 2.7,
              height: 160,
              color: Colors.black87,
              child: forecastCard(snapshot, index),
            ),
          ),
        ),
      ],
    );
  }
}
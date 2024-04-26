import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_orkester_app/data/weather/weather_code.dart';

class WeatherDailyCard extends StatelessWidget {
  WeatherDailyCard(
      {super.key,
      required this.temperature_2mMax,
      required this.temperature_2mMin,
      required this.code,
      required this.time,
      required this.temperatureUnit});
  String time;
  double temperature_2mMax;
  double temperature_2mMin;
  String temperatureUnit;
  int code;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/${weatherCode.firstWhere((e) => e.id == code).imageDay}',
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(width: 5),
                  Text(time),
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Text(
                        temperature_2mMax.toString(),
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        " / ",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(temperature_2mMin.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(color: Colors.grey[500])),
                    ],
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    temperatureUnit,
                    style: Theme.of(context).textTheme.headlineSmall,
                  )
                ],
              ),
            ],
          ),
        ),
        const Divider(
          color: Colors.black,
          thickness: 3,
        ),
      ],
    );
    ;
  }
}

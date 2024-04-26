import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_orkester_app/data/weather/weather_code.dart';
import 'package:weather_orkester_app/presentation/viewmodels/weather.viewmodel.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<WeatherPageViewModel>(context);

    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${vm.localityName?.locality}',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                '${vm.localityName?.country}',
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
          RotatedBox(
            quarterTurns: 1,
            child: Text(
              weatherCode
                  .firstWhere((e) => e.id == vm.weather!.current.weatherCode)
                  .name,
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

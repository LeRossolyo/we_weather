import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_orkester_app/presentation/viewmodels/weather.viewmodel.dart';

class AdditionalDataSection extends StatelessWidget {
  const AdditionalDataSection({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<WeatherPageViewModel>(context);

    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Wind speed  ${vm.weather!.current.windSpeed_10m} ${vm.weather!.currentUnits.windSpeed_10m}',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            'Relative humidity  ${vm.weather!.current.relativeHumidity_2m} ${vm.weather!.currentUnits.relativeHumidity_2m}',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}

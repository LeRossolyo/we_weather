import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:weather_orkester_app/data/weather/weather_code.dart';
import 'package:weather_orkester_app/presentation/viewmodels/weather.viewmodel.dart';

class WeatherSection extends StatelessWidget {
  const WeatherSection({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<WeatherPageViewModel>(context);

    return Column(
      children: [
        const Divider(
          color: Colors.black,
          thickness: 3,
          endIndent: 150,
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/${weatherCode.firstWhere((e) => e.id == vm.weather!.current.weatherCode).imageDay}',
                width: 250,
                height: 250,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    vm.weather!.current.temperature_2m.toString(),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  Text(
                    vm.weather!.currentUnits.temperature_2m,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
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
  }
}

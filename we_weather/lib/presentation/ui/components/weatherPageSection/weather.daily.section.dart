import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:weather_orkester_app/data/weather/weather_code.dart';
import 'package:weather_orkester_app/presentation/ui/components/weather.daily.card.dart';
import 'package:weather_orkester_app/presentation/viewmodels/weather.viewmodel.dart';

class WeatherDailySection extends StatelessWidget {
  const WeatherDailySection({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<WeatherPageViewModel>(context);

    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: vm.weatherDaily!.daily.temperature_2mMax.length,
      itemBuilder: (BuildContext context, int index) => WeatherDailyCard(
        code: vm.weatherDaily!.daily.weatherCode[index],
        temperatureUnit: vm.weatherDaily!.dailyUnits.temperature_2mMax,
        temperature_2mMax: vm.weatherDaily!.daily.temperature_2mMax[index],
        temperature_2mMin: vm.weatherDaily!.daily.temperature_2mMin[index],
        time: vm.weatherDaily!.daily.time[index],
      ),
    );
  }
}

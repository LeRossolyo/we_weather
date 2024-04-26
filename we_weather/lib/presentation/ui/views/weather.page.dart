import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_orkester_app/data/models/weather.daily.res.model.dart';
import 'package:weather_orkester_app/data/models/weather.res.model.dart';
import 'package:weather_orkester_app/presentation/ui/components/weatherPageSection/additional.data.section.dart';
import 'package:weather_orkester_app/presentation/ui/components/weatherPageSection/location.section.dart';
import 'package:weather_orkester_app/presentation/ui/components/weatherPageSection/weather.daily.section.dart';
import 'package:weather_orkester_app/presentation/ui/components/weatherPageSection/weather.section.dart';
import 'package:weather_orkester_app/presentation/viewmodels/weather.viewmodel.dart';

@RoutePage()
class WeatherPage extends StatelessWidget {
  const WeatherPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<WeatherPageViewModel>(
        create: (context) => WeatherPageViewModel.init(context),
        builder: (context, child) {
          final vm = Provider.of<WeatherPageViewModel>(context);

          return Scaffold(
            appBar: AppBar(
              title: const Text('We Weather'),
              actions: [
                IconButton(
                  onPressed: () => vm.getWeather(),
                  icon: const Icon(Icons.refresh),
                ),
              ],
            ),
            body: Selector<WeatherPageViewModel, bool>(
              selector: (context, vm) => vm.loading,
              builder: ((context, loading, child) => loading
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: Colors.black,
                      ),
                    )
                  : ListView(
                      children: [
                        Column(
                          children: [
                            Selector<WeatherPageViewModel,
                                WeatherResponseModel?>(
                              selector: ((context, vm) => vm.weather),
                              builder: ((context, weather, child) =>
                                  weather != null
                                      ? const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            LocationSection(),
                                            WeatherSection(),
                                            AdditionalDataSection()
                                          ],
                                        )
                                      : const Center(
                                          child: Text('Pas de current data'))),
                            ),
                            Selector<WeatherPageViewModel,
                                WeatherDailyResponseModel?>(
                              selector: ((context, vm) => vm.weatherDaily),
                              builder: ((context, weatherDaily, child) =>
                                  weatherDaily != null
                                      ? const WeatherDailySection()
                                      : const Text('Aller les verts')),
                            ),
                          ],
                        ),
                      ],
                    )),
            ),
          );
        });
  }
}

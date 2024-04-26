import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_orkester_app/presentation/viewmodels/location.viewmodel.dart';

@RoutePage()
class LocationPage extends StatelessWidget {
  const LocationPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LocationPageViewModel>(
      create: (context) => LocationPageViewModel.init(context),
      builder: (context, child) {
        final vm = Provider.of<LocationPageViewModel>(context);

        return Scaffold(
          appBar: AppBar(
            title: const Text("Weather Orkester"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(
                      children: [
                        Text('Mais où êtes-vous ?',
                            style: TextStyle(fontSize: 25)),
                        Image(
                          image: AssetImage('assets/lost.png'),
                          width: 350,
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Text("Nous avons besoin de votre localisation pour"),
                        Text("vous donner la météo"),
                        Text(
                            "Vérifiez que la localisation est activée sur votre téléphone"),
                        Text("et que notre app est autorisé a l'utiliser.")
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () => vm.getCurrentPosition(context),
                      child: const Text("Retrouver ma localisation"),
                    ),
                  ]),
            ),
          ),
        );
      },
    );
  }
}

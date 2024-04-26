import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:weather_orkester_app/application/services/localisation.services.dart';

class LocationPageViewModel extends ChangeNotifier {
  final LocalisationService _localisationService;
  final StackRouter _router;


  LocationPageViewModel(this._localisationService, this._router) : super();

  factory LocationPageViewModel.init(context) {
    return LocationPageViewModel(LocalisationService.injected(), AutoRouter.of(context));
  }

  Future<void> getCurrentPosition(BuildContext context) async {
    final bool hasPermissionLocation = await _localisationService.getCurrentPosition(context);

    if (hasPermissionLocation) {
      _router.replaceNamed('/weather');
    }
  }
}
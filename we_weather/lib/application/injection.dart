import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_orkester_app/application/injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<GetIt> configureDependencies() async {
  final GetIt instance = getIt.init();
  
  return instance;
}
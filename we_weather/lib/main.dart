import 'package:flutter/material.dart';
import 'package:weather_orkester_app/application/injection.dart';
import 'package:weather_orkester_app/presentation/router/app_router.dart';
import 'package:weather_orkester_app/presentation/ui/theme.dart';

void main() async {
  await configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = getIt<AppRouter>();
  final _appTheme = AppTheme();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){            
    return MaterialApp.router(            
      theme: _appTheme.light,
      darkTheme: _appTheme.dark,
      themeMode: ThemeMode.system,
      routerConfig: _appRouter.config(),  
      debugShowCheckedModeBanner: false,    
    );            
  } 
}
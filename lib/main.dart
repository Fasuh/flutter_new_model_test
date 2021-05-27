import 'package:flutter/material.dart';
import 'package:flutter_new_model_test/injection_container.dart';
import 'package:flutter_new_model_test/app_config.dart';
import 'package:flutter_new_model_test/core/app/navigator.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InjectionContainer().init();
  AppConfig.init;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: CustomNavigator.router.generator,
      navigatorKey: CustomNavigator.navigatorKey,
      localizationsDelegates: [S.delegate],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Container(),
      ),
    );
  }
}

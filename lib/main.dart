import 'package:alvina/providers/home_provider.dart';
import 'package:alvina/providers/product_listing_provider.dart';
import 'package:alvina/providers/url_launcher_provider.dart';
import 'package:alvina/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
  load();
}

void load() async {
  await dotenv.load(fileName: "assets/.env");
  print(dotenv.get('FOO'));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => UrlLauncherProvider()),
        ChangeNotifierProvider(create: (_) => ProductListingProvider()),
      ],
      child: MaterialApp(
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ar', 'AE') // OR Locale('ar', 'AE') OR Other RTL locales
        ],
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffd1beb7)),
          useMaterial3: true,
        ),
        home: const Splash(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:thenews/Ui/screens/home/home_screen.dart';
import 'package:thenews/Ui/screens/home/new_detailes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:thenews/Ui/screens/home/tabs/settings.dart';
import 'model/app_provider.dart';

void main() {
runApp(ChangeNotifierProvider(
      create: (context) => AppProvider(), child: const MyApp()));
}  
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppProvider appProvider=Provider.of(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(appProvider.isArEnable ? "ar" : "en"),
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routename:(context) => const HomeScreen(),
        NewsDetailes.routename:(context) => const NewsDetailes(),
        SettingsScreen.routeName:(context) => const SettingsScreen(),

      },
      initialRoute: HomeScreen.routename,
    );
  }
}
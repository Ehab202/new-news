
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../model/app_provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});
  static const String routeName="Settinges Screen";


  @override
  State<SettingsScreen> createState() => _SettingsTapState();
}

class _SettingsTapState extends State<SettingsScreen> {
  bool isArEnable = false;

  @override
  Widget build(BuildContext context) {
    AppProvider appProvider=Provider.of(context);
    return Scaffold(
      body: Column(

        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.green,
            child: Center(child: Text(AppLocalizations.of(context)!.newsApp,style: const TextStyle(color: Colors.white,fontSize: 25,),)),
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 10,),
              const Text("language(ar) (العربيه)",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
              const Spacer(),
              Switch(
                activeColor:  Colors.green,
                value: appProvider.isArEnable,
                onChanged: (value) {
                  appProvider.changeCurrantLocala(value);

                },
              ),
              const SizedBox(width: 8,)
            ],
          ),

        ],
      ),
    );
  }
}


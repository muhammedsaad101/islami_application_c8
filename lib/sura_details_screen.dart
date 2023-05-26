import 'package:flutter/material.dart';
import 'package:flutter_applications_c8/sura_details_args.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'sura-details';
  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/main_background.png',
                ),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.suraName, style: Theme.of(context).textTheme.bodyLarge,),
          ),
        ));
  }
}

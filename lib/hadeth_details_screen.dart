import 'package:flutter/material.dart';
import 'package:flutter_applications_c8/hadet_details_args.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth-details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethDetailsArgs;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/main_background.png',
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.hadeth.title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Card(
          elevation: 12,
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          margin: EdgeInsets.symmetric(vertical: 30, horizontal: 18),
          child: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  args.hadeth.content,
                  style: Theme.of(context).textTheme.bodySmall,
                  textDirection: TextDirection.rtl,
                )),
          ),
        ),
      ),
    );
  }
}

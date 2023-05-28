import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_applications_c8/sura_details_args.dart';
import 'package:google_fonts/google_fonts.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura-details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  var verses = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) readFile(args.index);
    return Container(
      padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/main_background.png',
                ),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              args.suraName,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.separated(
                  itemBuilder: (context, index) => Text(
                        verses[index],
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.elMessiri(
                          fontSize: 20,
                              color: Colors.black,
                            fontWeight: FontWeight.normal
                        ),
                        textAlign: TextAlign.center,
                      ),
                  separatorBuilder: (context, index) => Divider(
                        color: Theme.of(context).primaryColor,
                        thickness: 1,
                        indent: 40,
                        endIndent: 40,
                      ),
                  itemCount: verses.length),
        ));
  }

  readFile(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${fileIndex}.txt');
    List<String> suraLines = fileContent.split('\n');
    verses = suraLines;
    setState(() {});
  }
}

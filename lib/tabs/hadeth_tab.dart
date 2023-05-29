import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_applications_c8/hadet_details_args.dart';
import 'package:flutter_applications_c8/hadeth_details_screen.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethModel> hadethList = [];

  @override
  Widget build(BuildContext context) {
    if (hadethList.isEmpty) readHadethFile();
    return Container(
      child: Column(
        children: [
          Expanded(
              child: ListView.separated(
            itemBuilder: (context, index) => InkWell(
              onTap: (){
                Navigator.pushNamed(context, HadethDetailsScreen.routeName,

                arguments: HadethDetailsArgs(hadeth: hadethList[index]));
              },
              child: Text(
                hadethList[index].title,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.black),
              ),
            ),
            separatorBuilder: (context, index) => Divider(
              color: Theme.of(context).primaryColor,
              thickness: 1,
              endIndent: 40,
              indent: 40,
            ),
            itemCount: hadethList.length,
          ))
        ],
      ),
    );
  }

  List<HadethModel> allHadethItemList = [];

  readHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth .txt');
    List<String> ahadethList = fileContent.trim().split('#');
    for (int i = 0; i < ahadethList.length; i++) {
      String hadethItem = ahadethList[i];
      List<String> hadethItemLines = hadethItem.trim().split('\n');
      String title = hadethItemLines[0];
      hadethItemLines.removeAt(0);
      String hadethItemContent = hadethItemLines.join('\n');
      print(title);
      print(hadethItemContent);
      HadethModel hadeth =
          HadethModel(title: title, content: hadethItemContent);
      allHadethItemList.add(hadeth);
    }
    hadethList = allHadethItemList;
    setState(() {});
  }
}

class HadethModel {
  String title;
  String content;

  HadethModel({required this.title, required this.content});
}

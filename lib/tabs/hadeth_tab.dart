import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethModel> hadethList = [];

  @override
  Widget build(BuildContext context) {
    if(hadethList.isEmpty)
      readHadethFile();
    return Container(
      child: Column(
        children: [
          Expanded(child: ListView.builder(itemBuilder: (context, index) => Text(hadethList[index].title), itemCount: hadethList.length,))
        ],
      ),
    );
  }

  List<HadethModel> allHadethItemList = [];

  readHadethFile()async{
    String fileContent = await rootBundle.loadString('assets/files/ahadeth .txt');
    List<String> ahadethList = fileContent.trim().split('#');
    for(int i = 0; i < ahadethList.length; i++){
      String hadethItem = ahadethList[i];
      List<String>hadethItemLines = hadethItem.trim().split('\n');
      String title = hadethItemLines[0];
      hadethItemLines.removeAt(0);
      String hadethItemContent = hadethItemLines.join('\n');
      print(title);
      print(hadethItemContent);
      HadethModel hadeth = HadethModel(title: title, content: hadethItemContent);
      allHadethItemList.add(hadeth);
    }
    hadethList = allHadethItemList;
    setState(() {
      
    });
  }
}
class HadethModel{
  String title;
  String content;
  HadethModel({required this.title, required this.content});
}

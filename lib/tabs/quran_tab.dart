import 'package:flutter/material.dart';
import 'package:flutter_applications_c8/sura_details_args.dart';
import 'package:flutter_applications_c8/sura_details_screen.dart';

class QuranTab extends StatelessWidget {
  List<String> suraNamesList = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.purple,
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: Image.asset('assets/images/quran_image_header.png')),
          Divider(
            color: Theme.of(context).primaryColor,
            // height: 2,
            thickness: 2,
          ),
          Text(
            'Chapter Name',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            // height: 2,
            thickness: 2,
          ),
          Expanded(
            flex: 7,
            child: ListView.separated(
              itemBuilder: (_, index) => InkWell(
                onTap: (){
                  Navigator.pushNamed(context, SuraDetailsScreen.routeName,
                  arguments: SuraDetailsArgs(suraName: suraNamesList[index], index: index+1),
                  );
                },
                child: Text(
                  suraNamesList[index],
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.black
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              itemCount: suraNamesList.length,
              separatorBuilder: (context, index) => Divider(
                color: Theme.of(context).primaryColor,
                // height: 2,
                thickness: 1,
                endIndent: 35,
                indent: 35,
              ),
            ),
          )
        ],
      ),
    );
  }
}

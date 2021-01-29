import 'package:al_quran_flutter/screen/quran_detail.dart';
import 'package:al_quran_flutter/screen/quran_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/quran_ayat_model.dart';
import 'models/quran_model.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: QuranData(), //LOAD PROVIDER QURANDATA UNTUK STATE MANAGEMENT LIST SURAH
        ),
        //PROVIDER LAINNYA AKAN DITEMPAT DISINI, DIPISAHKAN DENGAN KOMA
        ChangeNotifierProvider.value(
          value: QuranAyat(),
        ),
      ],
      child: MaterialApp(
        title: 'Mozeeb',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: QuranList(), //DEFAULTNYA AKAN ME-LOAD SCREEN QURANLIST
        routes: {
          //ROUTING UNTUK DETAIL SURAH
          '/detail': (ctx) => QuranDetail(),
        },
      ),
    );
  }
}
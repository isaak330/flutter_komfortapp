import 'package:flutter/material.dart';
import 'package:flutter_komfortapp/HomeScreen/Reklama/reklama.dart';
import 'package:flutter_komfortapp/HomeScreen/Reklama/reklama_back.dart';
import 'package:flutter_komfortapp/HomeScreen/TarifInfo/front/TarifInfo.dart';
import 'package:flutter_komfortapp/HomeScreen/appbar/back/app_bar_data.dart';
import 'package:flutter_komfortapp/HomeScreen/appbar/front/app_bar.dart';
import 'package:flutter_komfortapp/HomeScreen/infoBar/front/informationBar.dart';
import 'package:flutter_komfortapp/HomeScreen/payButton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: HomeScreenRepo.getHomeScreen(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const SizedBox(
              height: 32,
              width: 32,
              child: Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.white,
                ),
              ),
            );
          } else {
            return Scaffold(
              appBar: appBar(snapshot.data[0], snapshot.data[1]),
              backgroundColor: const Color.fromARGB(255, 242, 243, 245),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    InformationBar(
                        balance: snapshot.data[2].toString(),
                        monthPayment: snapshot.data[3].toString()),
                    payButton(),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                      child: const Text(
                        'Наши предложения',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 134,
                      child: FutureBuilder(
                          future: AdRepo.getAd(),
                          builder: (context, AsyncSnapshot<List<Ad>> snapshot) {
                            if (snapshot.data == null) {
                              return const CircularProgressIndicator();
                            }
                            return ListView(
                              scrollDirection: Axis.horizontal,
                              children: snapshot.data!
                                  .map((e) => AdCardWidget(
                                      url: e.imageUrl, link: e.link))
                                  .toList(),
                            );
                          }),
                    ),
                    //Reklama(rImage);
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                      child: const Text(
                        'Мой тариф',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                    ),
                    const TarifInfoFilled(),
                  ],
                ),
              ),
            );
          }
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_komfortapp/appBar.dart';
import 'package:flutter_komfortapp/history.dart';
import 'package:flutter_komfortapp/infoBar/back/getInfoBarData.dart';
import 'package:flutter_komfortapp/infoBar/front/informationBar.dart';
import 'package:flutter_komfortapp/payButton.dart';
import 'package:flutter_komfortapp/payButtons/payButtons.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBar('222', '123'),
        // bottomNavigationBar: navBar(),
        backgroundColor: Color.fromARGB(255, 242, 243, 245),
        body: SingleChildScrollView(
          child: Column(
            children: [
              informationBar(),
              payButton(),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(16, 8, 16, 16),
                child: Text(
                  'Наши предложения',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: HomePageRepo.getInfoBarData(),
//         builder: (context, snapshot) {
//           if (snapshot.data == null) {
//             return CircularProgressIndicator();
//           } else {
//             return Scaffold(
//               appBar: appBar(snapshot.data[0], snapshot.data[1]),
//               // bottomNavigationBar: navBar(),
//               backgroundColor: Color.fromARGB(255, 242, 243, 245),
//               body: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     informationBar(),
//                     payButton(),
//                     Container(
//                       alignment: Alignment.centerLeft,
//                       margin: EdgeInsets.fromLTRB(16, 8, 16, 16),
//                       child: Text(
//                         'Наши предложения',
//                         style:
//                             TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             );
//           }
//         });
//   }
// }

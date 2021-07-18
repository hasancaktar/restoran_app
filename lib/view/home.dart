
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restoran_app/service/service.dart';
import 'package:restoran_app/view/menuler/beyazi_et_yemekleri.dart';
import 'package:restoran_app/view/menuler/corba.dart';
import 'package:restoran_app/view/menuler/gazli_icecekler.dart';
import 'package:restoran_app/view/menuler/gazsiz_icecekler.dart';
import 'package:restoran_app/view/menuler/indirimli_menuler.dart';
import 'package:restoran_app/view/menuler/kirmizi_et_yemekleri.dart';
import 'package:restoran_app/view/menuler/sebzeli_etli_yemekler.dart';
import 'package:restoran_app/view/menuler/tatli.dart';
import 'package:restoran_app/view/menuler/yan_lezzetler.dart';
import 'package:restoran_app/view/menuler/zeytinyaglilar.dart';
import 'package:restoran_app/view/sepet.dart';

import 'menuler/salata.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  Service service = Service();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Restoran app"),
          actions: [IconButton(onPressed: (){
            Get.to(Sepet());
          }, icon: Icon(Icons.shopping_basket,color: Colors.purple,))],
        ),
        body: Center(
            child: ListView.builder(
                itemCount: service.myMenu.menus![0].items!.length,
                itemBuilder: (context, index) {
                  String? images = service.myMenu.menus![0].items![index].image;
                  String? img = images!.substring(1, images.length);
                  //  print(img);
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height * 0.3,
                    child: Column(
                      children: [
                        //   Text("${myMenu.menus![0].items![0].name}"),
                        GestureDetector(
                          onTap: () {
                            var grade = "A";
                            switch (index) {
                              case 0:
                                {
                                  Get.to(() => IndirimliMenuler());
                                }
                                break;
                              case 1:
                                {
                                  Get.to(() => KirmiziEtYemekleri());
                                }
                                break;

                              case 2:
                                {
                                  Get.to(() => SebzeliEtliYemekler());
                                }
                                break;

                              case 3:
                                {
                                  Get.to(() => BeyazEtYemekleri());
                                }
                                break;

                              case 4:
                                {
                                  Get.to(() => Corba());
                                }
                                break;

                              case 5:
                                {
                                  Get.to(() => Zeytinyaglilar());
                                }
                                break;

                              case 6:
                                {
                                  Get.to(() => Salata());
                                }
                                break;
                              case 7:
                                {
                                  Get.to(() => YanLezzetler());
                                }
                                break;
                              case 8:
                                {
                                  Get.to(() => Tatli());
                                }
                                break;
                              case 9:
                                {
                                  Get.to(() => GazsizIcecekler());
                                }
                                break;

                              case 10:
                                {
                                  Get.to(() => GazliIcecekler());
                                }
                                break;

                              default:
                                {
                                  Get.to(() => HomeView());
                                }
                                break;
                            }
                          },
                          child: Card(
                            child: ListTile(
                              leading: Image.asset("${"assets" + img}",
                                  fit: BoxFit.cover),
                              title: Text(
                                  "${service.myMenu.menus![0].items![index].name}"),
                            ),
                          ),
                        ),
                        //Text("${myMenu.menus![0].items![index].name}"),
                      ],
                    ),
                  );
                })));
  }
}
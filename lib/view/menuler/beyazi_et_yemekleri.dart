import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restoran_app/controller.dart';
import 'package:restoran_app/service/service.dart';
import 'package:restoran_app/view/sepet.dart';

class BeyazEtYemekleri extends StatefulWidget {
  @override
  _BeyazEtYemekleriState createState() => _BeyazEtYemekleriState();
}

class _BeyazEtYemekleriState extends State<BeyazEtYemekleri> {
  Service service = Service();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [IconButton(onPressed: (){
            Get.to(Sepet());
          }, icon: Icon(Icons.shopping_basket,color: Colors.purple,))],
          title: Text("${service.myMenu.menus![0].items![3].name}"),
        ),
        body: Center(
            child: ListView.builder(
                itemCount: service.myMenu.menus![0].items![3].items!.length,
                itemBuilder: (context, index) {
                  String? images =
                      service.myMenu.menus![0].items![3].items![index].image;
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

                            Total.index++;
                            var tt=service.myMenu.menus![0].items![3].items![index].price;
                            double v =double.parse(tt!.replaceAll(",", "."));
                            Total.toplam +=v;
                            Get.snackbar("Sepete Eklendi",
                                "Toplam = ${Total.toplam.toStringAsFixed(2) +" TL"}",
                                duration: Duration(milliseconds: 1000),
                                snackPosition: SnackPosition.TOP,
                                snackStyle: SnackStyle.FLOATING,
                                backgroundColor: Colors.red);

                          },
                          child: Card(
                            child: ListTile(
                              leading: Image.asset("${"assets" + img}",
                                  fit: BoxFit.cover),
                              title: Text(
                                  "${service.myMenu.menus![0].items![3].items![index].name}"),
                              trailing: Text(
                                  "${service.myMenu.menus![0].items![3].items![index].price} TL"),
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

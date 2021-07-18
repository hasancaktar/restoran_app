import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restoran_app/controller.dart';
import 'package:restoran_app/view/odeme.dart';

class Sepet extends StatefulWidget {
  @override
  _SepetState createState() => _SepetState();
}

class _SepetState extends State<Sepet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sepet"),
      ),
      body: Center(
        child: Card(
          elevation: 20,
          clipBehavior: Clip.antiAlias,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 5),
                  child: SizedBox(height: MediaQuery.of(context).size.height *0.2,
                    child: Card(elevation: 10,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Toplam :",style: Theme.of(context).textTheme.headline5),
                          Text(Total.toplam.toStringAsFixed(2).toString()+" TL",style: Theme.of(context).textTheme.headline4,),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: ElevatedButton(
                    child: Center(
                        child: Text(
                      "Öde",
                      style: TextStyle(fontSize: 30),
                    )),
                    onPressed: () {
                      Get.to(Odeme());
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

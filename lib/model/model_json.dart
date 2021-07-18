
import 'dart:convert';

import 'dart:math';


// This is the data model 

// to use the data of yaml file 

// use the following line

 Menus menusFromJson(String str) => Menus.fromJson(menuJsonData);

 //String menusToJson(Menus data) => json.encode(data.toJson());

class Menus {
  Menus({
    this.menus,
  });

  List<Menu>? menus;

  factory Menus.fromJson(Map<String, dynamic> json) => Menus(
    menus: List<Menu>.from(json["menus"].map((x) => Menu.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "menus": List<dynamic>.from(menus!.map((x) => x.toJson())),
  };
}

class Menu {
  Menu({
    this.key,
    this.description,
    this.items,
    this.orderTag,
  });

  String? key;
  String? description;
  List<Item>? items;
  String? orderTag;

  factory Menu.fromJson(Map<String, dynamic> json) => Menu(
    key: json["key"],
    description: json["description"],
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
    orderTag: json["orderTag"] == null ? null : json["orderTag"],
  );

  Map<String, dynamic> toJson() => {
    "key": key,
    "description": description,
    "items": List<dynamic>.from(items!.map((x) => x.toJson())),
    "orderTag": orderTag == null ? null : orderTag,
  };
}

class Item {
  Item({
    this.name,
    this.caption,
    this.image,
    this.items,
    this.price,
    this.subMenus,
  });

  String? name;
  String? caption;
  String ?image;
  List<Item>? items;
  String?  price;
  List<String>? subMenus;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    name: json["name"] == null ? null : json["name"],
    caption: json["caption"] == null ? null : json["caption"],
    image: json["image"],
    items: json["items"] == null ? null : List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
    price: json["price"]== null ? null : json["price"],
    subMenus: json["subMenus"] == null ? null : List<String>.from(json["subMenus"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "caption": caption == null ? null : caption,
    "image": image,
    "items": items == null ? null : List<dynamic>.from(items!.map((x) => x.toJson())),
    "price": price == null ? null : price,
    "subMenus": subMenus == null ? null : List<dynamic>.from(subMenus!.map((x) => x)),
  };
}




// The yaml file converted into json 

 const  menuJsonData = {
  "menus": [
    {
      "key": "main",
      "description": "Siparişinizi oluşturun",
      "items": [
        {
          "name": "İndirimli Menüler",
          "caption": "İndirimli Menüler",
          "image": "./images/kirmizi-et-menu.jpg",
          "items": [
            {
              "name": "Kırmızı Et Menü",
              "caption": "Kırmızı Et Menü",
              "price": "20,95",
              "subMenus": [
                "kirmizi-et-ana-yemekler",
                "indirimli-menu-yan-lezzetler-1",
                "indirimli-menu-yan-lezzetler-2",
                "indirimli-menu-tatli",
                "indirimli-menu-icecek"
              ],
              "image": "./images/kirmizi-et-menu.jpg"
            },
            {
              "name": "Beyaz Et Menü",
              "caption": "Beyaz Et Menü",
              "price": "18,95",
              "subMenus": [
                "beyaz-et-ana-yemekler",
                "indirimli-menu-yan-lezzetler-1",
                "indirimli-menu-yan-lezzetler-2",
                "indirimli-menu-tatli",
                "indirimli-menu-icecek"
              ],
              "image": "./images/beyaz-et-menu.jpg"
            },
            {
              "name": "Sebzeli / Etli Menü",
              "caption": "Sebzeli / Etli Menü",
              "price": "16,95",
              "subMenus": [
                "sebzeli-etli-indirimli-menu-ana-yemekler",
                "indirimli-menu-yan-lezzetler-1",
                "indirimli-menu-yan-lezzetler-2",
                "indirimli-menu-tatli",
                "indirimli-menu-icecek"
              ],
              "image": "./images/sebzeli--etli-menu.jpg"
            },
            {
              "name": "Diyet Menü",
              "caption": "Diyet Menü",
              "price": "16,95",
              "subMenus": [
                "diyet-indirimli-menu-ana-yemekler",
                "indirimli-menu-yan-lezzetler-1",
                "indirimli-menu-yan-lezzetler-2",
                "indirimli-menu-icecek"
              ],
              "image": "./images/diyet-menu.jpg"
            },
            {
              "name": "4 Kişilik Menü - Etli Yaprak Sarma",
              "caption": "4 Kişilik Menü - Etli Yaprak Sarma",
              "price": "44",
              "image": "./images/4-kisilik-menu-etli-yaprak-sarma.jpg"
            },
            {
              "name": "Coca-Cola Menü",
              "caption": "Coca-Cola Menü",
              "price": "17,45",
              "subMenus": [
                "cocacola-indirimli-menu-ana-yemekler",
                "indirimli-menu-icecek",
                "indirimli-menu-yan-lezzetler-1",
                "indirimli-menu-yan-lezzetler-2",
                "indirimli-menu-tatli"
              ],
              "image": "./images/coca-cola-light-cam-sise.jpg"
            },
            {
              "name": "4 Kişilik Menü - Köri Soslu Tavuk",
              "caption": "4 Kişilik Menü - Köri Soslu Tavuk",
              "price": "55",
              "image": "./images/4-kisilik-menu-kori-soslu-tavuk.jpg"
            },
            {
              "name": "4 Kişilik Menü - İsveç Köfte",
              "caption": "4 Kişilik Menü - İsveç Köfte",
              "price": "66",
              "image": "./images/4-kisilik-menu-isvec-kofte.jpg"
            },
            {
              "name": "Vejetaryen Menü",
              "caption": "Vejetaryen Menü",
              "price": "16,95",
              "subMenus": [
                "vejeteryan-indirimli-menu-ana-yemekler",
                "indirimli-menu-yan-lezzetler-1",
                "indirimli-menu-yan-lezzetler-2"
              ],
              "image": "./images/vejeteryan-menu.jpg"
            }
          ]
        },
        {
          "name": "Kırmızı Et Yemekleri",
          "caption": "Kırmızı Et Yemekleri",
          "image": "./images/hunkar-begendi.jpg",
          "items": [
            {
              "name": "Hünkarbeğendi",
              "caption": "Hünkarbeğendi",
              "price": "17,45",
              "image": "./images/hunkar-begendi.jpg"
            },
            {
              "name": "Domates Soslu İsveç Köfte",
              "caption": "Domates Soslu İsveç Köfte",
              "price": "17,45",
              "image": "./images/isvec-kofte.jpg"
            },
            {
              "name": "Patates Püresi Yatağında Köfte",
              "caption": "Patates Püresi Yatağında Köfte",
              "price": "14,75",
              "image": "./images/patates-puresi-yataginda-kofte.jpg"
            },
            {
              "name": "Beğendi Yatağında Köfte",
              "caption": "Beğendi Yatağında Köfte",
              "price": "14,75",
              "image": "./images/begendi-yataginda-kofte.jpg"
            },
            {
              "name": "Izgara Köfte ve Karışık Sebze",
              "caption": "Izgara Köfte ve Karışık Sebze",
              "price": "14,75",
              "image": "./images/izgara-kofte-ve-karisik-sebze.jpg"
            },
            {
              "name": "Orman Kebabı",
              "caption": "Orman Kebabı",
              "price": "14,75",
              "image": "./images/orman-kebabi.jpg"
            },
            {
              "name": "Dana Kavurma ve Şehriyeli Pilav",
              "caption": "Dana Kavurma ve Şehriyeli Pilav",
              "price": "21,95",
              "image": "./images/dana-kavurma-ve-sehriyeli-pilav.jpg"
            }
          ]
        },
        {
          "name": "Sebzeli Etli Yemekler",
          "caption": "Sebzeli Etli Yemekler",
          "image": "./images/etli-yaprak-sarma-ve-yogurt.jpg",
          "items": [
            {
              "name": "Etli Asma Yaprağı Sarma ve Yoğurt",
              "caption": "Etli Asma Yaprağı Sarma ve Yoğurt",
              "price": "17,45",
              "image": "./images/etli-yaprak-sarma-ve-yogurt.jpg"
            },
            {
              "name": "Zerdeçal Soslu Karışık Sebze",
              "caption": "Zerdeçal Soslu Karışık Sebze",
              "price": "17,45",
              "image": "./images/zerdecal-soslu-karisik-sebze.jpg"
            },
            {
              "name": "Acı Soslu Patlıcanlı Fettuccine",
              "caption": "Acı Soslu Patlıcanlı Fettuccine",
              "price": "14,75",
              "image": "./images/aci-soslu-patlicanli-fettucine.jpg"
            },
            {
              "name": "Fırınlanmış Beyaz Nohut",
              "caption": "Fırınlanmış Beyaz Nohut",
              "price": "14,75",
              "image": "./images/firinlanmis-beyaz-nohut.jpg"
            },
            {
              "name": "Kıymalı Ispanak Oturtma ve Yoğurt",
              "caption": "Kıymalı Ispanak Oturtma ve Yoğurt",
              "price": "14,75",
              "image": "./images/kiymali-ispanak-oturtma-ve-yogurt.jpg"
            },
            {
              "name": "Kabak Kalye",
              "caption": "Kabak Kalye",
              "price": "14,75",
              "image": "./images/kabak-kalye.jpg"
            },
            {
              "name": "Veggie Lazanya",
              "caption": "Veggie Lazanya",
              "price": "14,75",
              "image": "./images/veggie-lazanya.jpg"
            },
            {
              "name": "Türlü",
              "caption": "Türlü",
              "price": "14,75",
              "image": "./images/turlu.jpg"
            },
            {
              "name": "Antep Usulü Karışık Dolma ve Yoğurt",
              "caption": "Antep Usulü Karışık Dolma ve Yoğurt",
              "price": "14,75",
              "image": "./images/antep-usulu-karisik-dolma-ve-yogurt.jpg"
            },
            {
              "name": "Kıymalı Yeşil Mercimek",
              "caption": "Kıymalı Yeşil Mercimek",
              "price": "14,75",
              "image": "./images/kiymali-yesil-mercimek.jpg"
            }
          ]
        },
        {
          "name": "Beyaz Et Yemekleri",
          "caption": "Beyaz Et Yemekleri",
          "image": "./images/pilic-piccata-ve-fettucine.jpg",
          "items": [
            {
              "name": "Moğol Usulü Sebzeli Tavuklu Erişte",
              "caption": "Moğol Usulü Sebzeli Tavuklu Erişte",
              "price": "17,45",
              "image": "./images/soya-soslu-tavuklu-sebzeli-noodle.jpg"
            },
            {
              "name": "Köri Soslu Mantarlı Tavuk",
              "caption": "Köri Soslu Mantarlı Tavuk",
              "price": "17,45",
              "image": "./images/kori-soslu-mantarli-tavuk.jpg"
            },
            {
              "name": "Piliç Piccata ve Fettuccine",
              "caption": "Piliç Piccata ve Fettuccine",
              "price": "14,75",
              "image": "./images/pilic-piccata-ve-fettucine.jpg"
            },
            {
              "name": "Fırın Tavuk ve Şehriyeli Pilav",
              "caption": "Fırın Tavuk ve Şehriyeli Pilav",
              "price": "14,75",
              "image": "./images/pilav-ustu-firin-tavuk.jpg"
            },
            {
              "name": "Izgara Tavuk ve Karışık Sebze",
              "caption": "Izgara Tavuk ve Karışık Sebze",
              "price": "14,75",
              "image": "./images/izgara-tavuk-ve-karisik-sebze.jpg"
            },
            {
              "name": "Somon Izgara",
              "caption": "Somon Izgara",
              "price": "14,75",
              "image": "./images/somon-izgara.jpg"
            }
          ]
        },
        {
          "name": "Çorba",
          "caption": "Çorba",
          "image": "./images/firinlanmis-tereyagli-mercimek-corbasi.jpg",
          "items": [
            {
              "name": "Fırınlanmış Tereyağlı Mercimek Çorbası",
              "caption": "Fırınlanmış Tereyağlı Mercimek Çorbası",
              "price": "7",
              "image": "./images/firinlanmis-tereyagli-mercimek-corbasi.jpg"
            },
            {
              "name": "Naneli Yoğurt Çorbası",
              "caption": "Naneli Yoğurt Çorbası",
              "price": "8",
              "image": "./images/naneli-yogurt-corbasi.jpg"
            },
            {
              "name": "Sütlü Brokoli Çorbası",
              "caption": "Sütlü Brokoli Çorbası",
              "price": "8",
              "image": "./images/sutlu-brokoli-corbasi.jpg"
            }
          ]
        },
        {
          "name": "Zeytinyağlılar",
          "caption": "Zeytinyağlılar",
          "image": "./images/zeytinyagli-brokoli.jpg",
          "items": [
            {
              "name": "Zeytinyağı Soslu Brokoli",
              "caption": "Zeytinyağı Soslu Brokoli",
              "price": "17,45",
              "image": "./images/zeytinyagli-brokoli.jpg"
            },
            {
              "name": "Zeytinyağı Soslu Brüksel Lahanası",
              "caption": "Zeytinyağı Soslu Brüksel Lahanası",
              "price": "17,45",
              "image": "./images/zeytinyagli-bruksel-lahanasi.jpg"
            },
            {
              "name": "Zerdeçal Soslu Karışık Sebze (Mini)",
              "caption": "Zerdeçal Soslu Karışık Sebze (Mini)",
              "price": "14,75",
              "image": "./images/mini-karisik-sebze.jpg"
            },
            {
              "name": "Balzamik Soslu Buğday Salata (Mini)",
              "caption": "Balzamik Soslu Buğday Salata (Mini)",
              "price": "14,75",
              "image": "./images/balzamik-soslu-bugday-salata-mini.jpg"
            },
            {
              "name": "Akdeniz Soslu Mercimek Salata (Mini)",
              "caption": "Akdeniz Soslu Mercimek Salata (Mini)",
              "price": "14,75",
              "image": "./images/akdeniz-soslu-mercimek-salata-mini.jpg"
            },
            {
              "name": "Soslu Izgara Sebze",
              "caption": "Soslu Izgara Sebze",
              "price": "14,75",
              "image": "./images/soslu-izgara-sebze.jpg"
            }
          ]
        },
        {
          "name": "Salata",
          "caption": "Salata",
          "image": "./images/venedik-soslu-kinoa-salatasi.jpg",
          "items": [
            {
              "name": "Venedik Soslu Kinoalı Yeşil Salata",
              "caption": "Venedik Soslu Kinoalı Yeşil Salata",
              "price": "11,45",
              "image": "./images/venedik-soslu-kinoa-salatasi.jpg"
            },
            {
              "name": "Thai Salata",
              "caption": "Thai Salata",
              "price": "11,45",
              "image": "./images/thai-salata.jpg"
            },
            {
              "name": "Pancar Salata",
              "caption": "Pancar Salata",
              "price": "11,45",
              "image": "./images/pancar-salata.jpg"
            }
          ]
        },
        {
          "name": "Yan Lezzetler",
          "caption": "Yan Lezzetler",
          "image": "./images/etli-yaprak-sarma-ve-yogurt.jpg",
          "items": [
            {
              "name": "Nohutlu Pirinç Pilavı",
              "caption": "Nohutlu Pirinç Pilavı",
              "price": "4,95",
              "image": "./images/nohutlu-sehriyeli-pirinc-pilavi.jpg"
            },
            {
              "name": "Domatesli Bulgur Pilavı",
              "caption": "Domatesli Bulgur Pilavı",
              "price": "4,95",
              "image": "./images/domatesli-bulgur-pilavi.jpg"
            },
            {
              "name": "Kaşarlı Patates Püresi",
              "caption": "Kaşarlı Patates Püresi",
              "price": "4,95",
              "image": "./images/kasarli-patates-puresi.jpg"
            },
            {
              "name": "Mini İçli Köfte",
              "caption": "Mini İçli Köfte",
              "price": "6,45",
              "image": "./images/mini-icli-kofte.jpg"
            },
            {
              "name": "Kadınbudu Köfte",
              "caption": "Kadınbudu Köfte",
              "price": "6,45",
              "image": "./images/kadinbudu-kofte.jpg"
            },
            {
              "name": "İnce Kıyım Şakşuka",
              "caption": "İnce Kıyım Şakşuka",
              "price": "6,45",
              "image": "./images/ince-kiyim-saksuka.jpg"
            },
            {
              "name": "Barbunya Pilaki",
              "caption": "Barbunya Pilaki",
              "price": "4,95",
              "image": "./images/barbunya-pilaki.jpg"
            },
            {
              "name": "Tereyağlı Cevizli Erişte",
              "caption": "Tereyağlı Cevizli Erişte",
              "price": "4,95",
              "image": "./images/tereyagli-cevizli-eriste.jpg"
            },
            {
              "name": "Baharatlı Fırın Patates",
              "caption": "Baharatlı Fırın Patates",
              "price": "4,95",
              "image": "./images/baharatli-firin-patates.jpg"
            }
          ]
        },
        {
          "name": "Tatlı",
          "caption": "Tatlı",
          "image": "./images/cekoslavak-gunesi.jpg",
          "items": [
            {
              "name": "Çekoslovak Güneşi",
              "caption": "Çekoslovak Güneşi",
              "price": "7,45",
              "image": "./images/cekoslavak-gunesi.jpg"
            },
            {
              "name": "Siyah İnci",
              "caption": "Siyah İnci",
              "price": "7,45",
              "image": "./images/siyah-inci-dilim.jpg"
            },
            {
              "name": "Çikolatalı Sufle",
              "caption": "Çikolatalı Sufle",
              "price": "7,75",
              "image": "./images/cikolatali-sufle.jpg"
            },
            {
              "name": "Kuş Sütü",
              "caption": "Kuş Sütü",
              "price": "8,75",
              "image": "./images/kus-sutu.jpg"
            },
            {
              "name": "Frambuazlı Cheesecake",
              "caption": "Frambuazlı Cheesecake",
              "price": "6,75",
              "image": "./images/frambuazli-cheesecake.jpg"
            },
            {
              "name": "Çikolatalı Brownie",
              "caption": "Çikolatalı Brownie",
              "price": "8,75",
              "image": "./images/cikolatali-brownie.jpg"
            },
            {
              "name": "İrmik Helvası",
              "caption": "İrmik Helvası",
              "price": "7,75",
              "image": "./images/irmik-helvasi.jpg"
            }
          ]
        },
        {
          "name": "Gazsız İçecekler",
          "caption": "Gazsız İçecekler",
          "image": "./images/damla-su.jpg",
          "items": [
            {
              "name": "Cappy Portakal Suyu",
              "caption": "Cappy Portakal Suyu",
              "price": "3,85",
              "image": "./images/cappy-portakal-suyu.jpg"
            },
            {
              "name": "Cappy Şeftali",
              "caption": "Cappy Şeftali",
              "price": "3,85",
              "image": "./images/cappy-seftali.jpg"
            },
            {
              "name": "Cappy Vişne Suyu",
              "caption": "Cappy Vişne Suyu",
              "price": "3,85",
              "image": "./images/cappy-visne-suyu.jpg"
            },
            {
              "name": "Sütaş Ayran",
              "caption": "Sütaş Ayran",
              "price": "2,45",
              "image": "./images/sutas-ayran-300ml.jpg"
            },
            {
              "name": "Illy Latte Macchiato",
              "caption": "Illy Latte Macchiato",
              "price": "5,45",
              "image": "./images/illy-latte-macchiato-pet-250ml.jpg"
            },
            {
              "name": "Illy Caffe Macchiato",
              "caption": "Illy Caffe Macchiato",
              "price": "5,45",
              "image": "./images/illy-caffe-macchiato-pet-250ml.jpg"
            },
            {
              "name": "Fuse Tea Limon Kutu",
              "caption": "Fuse Tea Limon Kutu",
              "price": "3,85",
              "image": "./images/fuse-tea-limon-kutu.jpg"
            },
            {
              "name": "Fuse Tea Şeftali Kutu",
              "caption": "Fuse Tea Şeftali Kutu",
              "price": "3,85",
              "image": "./images/fuse-tea-seftali.jpg"
            },
            {
              "name": "Soya Sütü Sade",
              "caption": "Soya Sütü Sade",
              "price": "5,85",
              "image": "./images/alpro-soya-sutu-sade.jpg"
            },
            {
              "name": "Soya Sütü Çilekli",
              "caption": "Soya Sütü Çilekli",
              "price": "5,85",
              "image": "./images/alpro-soya-sutu-cilekli.jpg"
            },
            {
              "name": "Soya Sütü Çikolatalı",
              "caption": "Soya Sütü Çikolatalı",
              "price": "5,85",
              "image": "./images/alpro-soya-sutu-cikolatali.jpg"
            },
            {
              "name": "Elmalı&Tarçınlı Demlendirilmiş Su",
              "caption": "Elmalı&Tarçınlı Demlendirilmiş Su",
              "price": "5,85",
              "image": "./images/found-elmaliandtarcinli-demlendirilmis-su.jpg"
            },
            {
              "name": "Naneli&Salatalıklı Demlendirilmiş Su",
              "caption": "Naneli&Salatalıklı Demlendirilmiş Su",
              "price": "5,85",
              "image": "./images/found-naneliandsalatalikli-demlendirilmis-su.jpg"
            },
            {
              "name": "Limonlu Demlendirilmiş Su",
              "caption": "Limonlu Demlendirilmiş Su",
              "price": "5,85",
              "image": "./images/found-limonlu-demlendirilmis-su-330ml.jpg"
            },
            {
              "name": "Mürver Çiçekli Demlendirilmiş Su",
              "caption": "Mürver Çiçekli Demlendirilmiş Su",
              "price": "5,85",
              "image": "./images/found-murver-cicekli-demlendirilmis-su-330ml.jpg"
            },
            {
              "name": "Enjoy Smoothie Çilek&Muz",
              "caption": "Enjoy Smoothie Çilek&Muz",
              "price": "7,45",
              "image": "./images/enjoy-smoothie-cilekandmuz-250ml.jpg"
            },
            {
              "name": "Enjoy Smoothie Mango&Passion Fruit",
              "caption": "Enjoy Smoothie Mango&Passion Fruit",
              "price": "7,45",
              "image": "./images/enjoy-smoothie-mangoandpassion-fruit.jpg"
            },
            {
              "name": "Enjoy Sıkma Portakal Suyu",
              "caption": "Enjoy Sıkma Portakal Suyu",
              "price": "5,85",
              "image": "./images/enjoy-sikma-portakal-suyu.jpg"
            },
            {
              "name": "Fuse Tea Limon Cam Şişe",
              "caption": "Fuse Tea Limon Cam Şişe",
              "price": "3,85",
              "image": "./images/fuse-tea-limon-cam-sise-250ml.jpg"
            },
            {
              "name": "Fuse Tea Şeftali Cam Şişe",
              "caption": "Fuse Tea Şeftali Cam Şişe",
              "price": "3,85",
              "image": "./images/fuse-tea-seftali-cam-sise-250ml.jpg"
            },
            {
              "name": "Cappy Şeftali Suyu Cam Şişe",
              "caption": "Cappy Şeftali Suyu Cam Şişe",
              "price": "3,85",
              "image": "./images/cappy-seftali-suyu-cam-sise-250ml.jpg"
            },
            {
              "name": "Cappy Portakal Suyu Cam Şişe",
              "caption": "Cappy Portakal Suyu Cam Şişe",
              "price": "3,85",
              "image": "./images/cappy-portakal-suyu-cam-sise-250ml.jpg"
            },
            {
              "name": "Cappy Vişne Suyu Cam Şişe",
              "caption": "Cappy Vişne Suyu Cam Şişe",
              "price": "3,85",
              "image": "./images/cappy-visne-suyu-cam-sise-250ml.jpg"
            }
          ]
        },
        {
          "name": "Gazlı İçecek",
          "caption": "Gazlı İçecek",
          "image": "./images/coca-cola-kutu-330ml.jpg",
          "items": [
            {
              "name": "Coca-Cola Kutu",
              "caption": "Coca-Cola Kutu",
              "price": "17,45",
              "image": "./images/coca-cola-kutu-330ml.jpg"
            },
            {
              "name": "Coca-Cola Light Kutu",
              "caption": "Coca-Cola Light Kutu",
              "price": "17,45",
              "image": "./images/coca-cola-light-kutu.jpg"
            },
            {
              "name": "Coca-Cola Zero Kutu",
              "caption": "Coca-Cola Zero Kutu",
              "price": "14,75",
              "image": "./images/coca-cola-zero-kutu.jpg"
            },
            {
              "name": "Fanta Portakal Kutu",
              "caption": "Fanta",
              "price": "14,75",
              "image": "./images/fanta-portakal-kutu.jpg"
            },
            {
              "name": "Sprite Kutu",
              "caption": "Sprite",
              "price": "14,75",
              "image": "./images/sprite-kutu.jpg"
            },
            {
              "name": "Guarana Antarctica Gazlı İçecek",
              "caption": "Guarana Antarctica Gazlı İçecek",
              "price": "14,75",
              "image": "./images/guarana-antarctica-gazli-icecek.jpg"
            },
            {
              "name": "Coca-Cola Light Cam Şişe",
              "caption": "Coca-Cola Light Cam Şişe",
              "price": "14,75",
              "image": "./images/coca-cola-light-cam-sise.jpg"
            },
            {
              "name": "Coca-Cola Cam Şişe",
              "caption": "Coca-Cola Cam Şişe",
              "price": "14,75",
              "image": "./images/coca-cola-cam-sise.jpg"
            },
            {
              "name": "Coca-Cola Zero Cam Şişe",
              "caption": "Coca-Cola Zero Cam Şişe",
              "price": "14,75",
              "image": "./images/coca-cola-zero-cam-sise.jpg"
            }
          ]
        }
      ]
    },
    {
      "key": "kirmizi-et-ana-yemekler",
      "description": "Ana Yemeğinizi Seçin",
      "orderTag": "Kırmızı Et - Ana Lezzetler",
      "items": [
        {
          "name": "Hünkarbeğendi",
          "image": "./images/hunkar-begendi.jpg",
          "price": "2,7"
        },
        {
          "name": "Domates Soslu İsveç Köfte",
          "image": "./images/isvec-kofte.jpg"
        },
        {
          "name": "Patates Püresi Yatağında Köfte",
          "image": "./images/patates-puresi-yataginda-kofte.jpg"
        },
        {
          "name": "Beğendi Yatağında Köfte",
          "image": "./images/begendi-yataginda-kofte.jpg"
        },
        {
          "name": "Izgara Köfte ve Karışık Sebze",
          "image": "./images/izgara-kofte-ve-karisik-sebze.jpg"
        },
        {
          "name": "Orman Kebabı",
          "image": "./images/orman-kebabi.jpg"
        },
        {
          "name": "Dana Kavurma ve Şehriyeli Pilav",
          "image": "./images/dana-kavurma-ve-sehriyeli-pilav.jpg",
          "price": "7,2"
        }
      ]
    },
    {
      "key": "beyaz-et-ana-yemekler",
      "description": "Ana Yemeğinizi Seçin",
      "orderTag": "Beyaz Et - Ana Lezzetler",
      "items": [
        {
          "name": "Moğol Usulü Sebzeli Tavuklu Erişte",
          "image": "./images/soya-soslu-tavuklu-sebzeli-noodle.jpg",
          "price": "2,7"
        },
        {
          "name": "Köri Soslu Mantarlı Tavuk",
          "image": "./images/kori-soslu-mantarli-tavuk.jpg"
        },
        {
          "name": "Piliç Piccata ve Fettuccine",
          "image": "./images/pilic-piccata-ve-fettucine.jpg"
        },
        {
          "name": "Fırın Tavuk ve Şehriyeli Pilav",
          "image": "./images/pilav-ustu-firin-tavuk.jpg"
        },
        {
          "name": "Izgara Tavuk ve Karışık Sebze",
          "image": "./images/izgara-tavuk-ve-karisik-sebze.jpg"
        },
        {
          "name": "Somon Izgara",
          "image": "./images/somon-izgara.jpg"
        }
      ]
    },
    {
      "key": "sebzeli-etli-indirimli-menu-ana-yemekler",
      "description": "Ana Yemeğinizi Seçin",
      "orderTag": "Sebzeli Etli Menü - Ana Lezzetler",
      "items": [
        {
          "name": "Etli Asma Yaprağı Sarma ve Yoğurt",
          "caption": "Etli Asma Yaprağı Sarma ve Yoğurt",
          "image": "./images/etli-yaprak-sarma-ve-yogurt.jpg"
        },
        {
          "name": "Zerdeçal Soslu Karışık Sebze",
          "caption": "Zerdeçal Soslu Karışık Sebze",
          "price": "1",
          "image": "./images/zerdecal-soslu-karisik-sebze.jpg"
        },
        {
          "name": "Acı Soslu Patlıcanlı Fettuccine",
          "caption": "Acı Soslu Patlıcanlı Fettuccine",
          "price": "1,75",
          "image": "./images/aci-soslu-patlicanli-fettucine.jpg"
        },
        {
          "name": "Fırınlanmış Beyaz Nohut",
          "caption": "Fırınlanmış Beyaz Nohut",
          "image": "./images/firinlanmis-beyaz-nohut.jpg"
        },
        {
          "name": "Kıymalı Ispanak Oturtma ve Yoğurt",
          "caption": "Kıymalı Ispanak Oturtma ve Yoğurt",
          "image": "./images/kiymali-ispanak-oturtma-ve-yogurt.jpg"
        },
        {
          "name": "Kabak Kalye",
          "caption": "Kabak Kalye",
          "image": "./images/kabak-kalye.jpg"
        },
        {
          "name": "Veggie Lazanya",
          "caption": "Veggie Lazanya",
          "price": "2",
          "image": "./images/veggie-lazanya.jpg"
        },
        {
          "name": "Türlü",
          "caption": "Türlü",
          "image": "./images/turlu.jpg"
        },
        {
          "name": "Antep Usulü Karışık Dolma ve Yoğurt",
          "caption": "Antep Usulü Karışık Dolma ve Yoğurt",
          "price": "3,25",
          "image": "./images/antep-usulu-karisik-dolma-ve-yogurt.jpg"
        },
        {
          "name": "Kıymalı Yeşil Mercimek",
          "caption": "Kıymalı Yeşil Mercimek",
          "image": "./images/kiymali-yesil-mercimek.jpg"
        }
      ]
    },
    {
      "key": "diyet-indirimli-menu-ana-yemekler",
      "description": "Ana Yemeğinizi Seçin",
      "orderTag": "Diyet Menu - Ana Lezzetler",
      "items": [
        {
          "name": "Kıymalı Ispanak Oturtma ve Yoğurt",
          "caption": "Kıymalı Ispanak Oturtma ve Yoğurt",
          "image": "./images/kiymali-ispanak-oturtma-ve-yogurt.jpg"
        },
        {
          "name": "Zerdeçal Soslu Karışık Sebze",
          "caption": "Zerdeçal Soslu Karışık Sebze",
          "price": "1",
          "image": "./images/zerdecal-soslu-karisik-sebze.jpg"
        },
        {
          "name": "Venedik Soslu Kinoalı Yeşil Salata",
          "caption": "Venedik Soslu Kinoalı Yeşil Salata",
          "price": "1,75",
          "image": "./images/venedik-soslu-kinoa-salatasi.jpg"
        },
        {
          "name": "Thai Salata",
          "caption": "Thai Salata",
          "image": "./images/thai-salata.jpg"
        },
        {
          "name": "Pancar Salata",
          "caption": "Pancar Salata",
          "image": "./images/pancar-salata.jpg"
        },
        {
          "name": "Türlü",
          "caption": "Türlü",
          "image": "./images/turlu.jpg"
        },
        {
          "name": "Fırınlanmış Beyaz Nohut",
          "caption": "Fırınlanmış Beyaz Nohut",
          "price": "2",
          "image": "./images/firinlanmis-beyaz-nohut.jpg"
        },
        {
          "name": "Izgara Tavuk ve Karışık Sebze",
          "caption": "Izgara Tavuk ve Karışık Sebze",
          "image": "./images/izgara-tavuk-ve-karisik-sebze.jpg"
        },
        {
          "name": "Kıymalı Yeşil Mercimek",
          "caption": "Kıymalı Yeşil Mercimek",
          "price": "3,25",
          "image": "./images/kiymali-yesil-mercimek.jpg"
        },
        {
          "name": "Orman Kebabı",
          "caption": "Orman Kebabı",
          "image": "./images/orman-kebabi.jpg"
        }
      ]
    },
    {
      "key": "vejeteryan-indirimli-menu-ana-yemekler",
      "description": "Ana Yemeğinizi Seçin",
      "orderTag": "Vejeteryan Menü - Ana Lezzetler",
      "items": [
        {
          "name": "Kabak Kalye",
          "caption": "Kabak Kalye",
          "image": "./images/kabak-kalye.jpg"
        },
        {
          "name": "Acı Soslu Patlıcanlı Fettuccine",
          "caption": "Acı Soslu Patlıcanlı Fettuccine",
          "price": "1",
          "image": "./images/aci-soslu-patlicanli-fettucine.jpg"
        },
        {
          "name": "Zerdeçal Soslu Karışık Sebze",
          "caption": "Zerdeçal Soslu Karışık Sebze",
          "price": "1,75",
          "image": "./images/zerdecal-soslu-karisik-sebze.jpg"
        },
        {
          "name": "Thai Salata",
          "caption": "Thai Salata",
          "image": "./images/thai-salata.jpg"
        },
        {
          "name": "Pancar Salata",
          "caption": "Pancar Salata",
          "image": "./images/pancar-salata.jpg"
        },
        {
          "name": "Türlü",
          "caption": "Türlü",
          "image": "./images/turlu.jpg"
        },
        {
          "name": "Fırınlanmış Beyaz Nohut",
          "caption": "Fırınlanmış Beyaz Nohut",
          "price": "2",
          "image": "./images/firinlanmis-beyaz-nohut.jpg"
        },
        {
          "name": "Izgara Tavuk ve Karışık Sebze",
          "caption": "Izgara Tavuk ve Karışık Sebze",
          "image": "./images/izgara-tavuk-ve-karisik-sebze.jpg"
        },
        {
          "name": "Kıymalı Yeşil Mercimek",
          "caption": "Kıymalı Yeşil Mercimek",
          "price": "3,25",
          "image": "./images/kiymali-yesil-mercimek.jpg"
        },
        {
          "name": "Orman Kebabı",
          "caption": "Orman Kebabı",
          "image": "./images/orman-kebabi.jpg"
        },
        {
          "name": "Zerdeçal Soslu Karışık Sebze",
          "caption": "Zerdeçal Soslu Karışık Sebze",
          "image": "./images/zerdecal-soslu-karisik-sebze.jpg"
        }
      ]
    },
    {
      "key": "cocacola-indirimli-menu-ana-yemekler",
      "description": "Ana Yemeğinizi Seçin",
      "orderTag": "Coca Cola Menü - Ana Lezzetler",
      "items": [
        {
          "name": "Orman Kebabı",
          "caption": "Orman Kebabı",
          "image": "./images/orman-kebabi.jpg"
        },
        {
          "name": "Beğendi Yatağında Köfte",
          "caption": "Beğendi Yatağında Köfte",
          "price": "1",
          "image": "./images/begendi-yataginda-kofte.jpg"
        },
        {
          "name": "Patates Püresi Yatağında Köfte",
          "caption": "Patates Püresi Yatağında Köfte",
          "price": "1,75",
          "image": "./images/patates-puresi-yataginda-kofte.jpg"
        },
        {
          "name": "Izgara Köfte ve Karışık Sebze",
          "caption": "Izgara Köfte ve Karışık Sebze",
          "image": "./images/izgara-kofte-ve-karisik-sebze.jpg"
        },
        {
          "name": "Dana Kavurma ve Şehriyeli Pilav",
          "caption": "Dana Kavurma ve Şehriyeli Pilav",
          "image": "./images/dana-kavurma-ve-sehriyeli-pilav.jpg"
        },
        {
          "name": "Izgara Tavuk ve Karışık Sebze",
          "caption": "Izgara Tavuk ve Karışık Sebze",
          "image": "./images/izgara-tavuk-ve-karisik-sebze.jpg"
        },
        {
          "name": "Fırın Tavuk ve Şehriyeli Pilav",
          "caption": "Fırın Tavuk ve Şehriyeli Pilav",
          "price": "2",
          "image": "./images/pilav-ustu-firin-tavuk.jpg"
        },
        {
          "name": "Moğol Usulü Sebzeli Tavuklu Erişte",
          "caption": "Moğol Usulü Sebzeli Tavuklu Erişte",
          "image": "./images/soya-soslu-tavuklu-sebzeli-noodle.jpg"
        },
        {
          "name": "Piliç Piccata ve Fettuccine",
          "caption": "Piliç Piccata ve Fettuccine",
          "price": "3,25",
          "image": "./images/pilic-piccata-ve-fettucine.jpg"
        },
        {
          "name": "Etli Asma Yaprağı Sarma ve Yoğurt",
          "caption": "Etli Asma Yaprağı Sarma ve Yoğurt",
          "image": "./images/etli-yaprak-sarma-ve-yogurt.jpg"
        },
        {
          "name": "Türlü",
          "caption": "Türlü",
          "image": "./images/turlu.jpg"
        },
        {
          "name": "Zerdeçal Soslu Karışık Sebze",
          "caption": "Zerdeçal Soslu Karışık Sebze",
          "image": "./images/zerdecal-soslu-karisik-sebze.jpg"
        },
        {
          "name": "Domates Soslu İsveç Köfte",
          "caption": "Domates Soslu İsveç Köfte",
          "image": "./images/isvec-kofte.jpg"
        },
        {
          "name": "Hünkarbeğendi",
          "caption": "Hünkarbeğendi",
          "image": "./images/hunkar-begendi.jpg"
        },
        {
          "name": "Veggie Lazanya",
          "caption": "Veggie Lazanya",
          "image": "./images/veggie-lazanya.jpg"
        },
        {
          "name": "Köri Soslu Mantarlı Tavuk",
          "caption": "Köri Soslu Mantarlı Tavuk",
          "image": "./images/kori-soslu-mantarli-tavuk.jpg"
        },
        {
          "name": "Kıymalı Yeşil Mercimek",
          "caption": "Kıymalı Yeşil Mercimek",
          "image": "./images/kiymali-yesil-mercimek.jpg"
        },
        {
          "name": "Acı Soslu Patlıcanlı Fettuccine",
          "caption": "Acı Soslu Patlıcanlı Fettuccine",
          "image": "./images/aci-soslu-patlicanli-fettucine.jpg"
        },
        {
          "name": "Fırınlanmış Beyaz Nohut",
          "caption": "Fırınlanmış Beyaz Nohut",
          "image": "./images/firinlanmis-beyaz-nohut.jpg"
        },
        {
          "name": "Kıymalı Ispanak Oturtma ve Yoğurt",
          "caption": "Kıymalı Ispanak Oturtma ve Yoğurt",
          "image": "./images/kiymali-ispanak-oturtma-ve-yogurt.jpg"
        },
        {
          "name": "Somon Izgara",
          "caption": "Somon Izgara",
          "image": "./images/somon-izgara.jpg"
        },
        {
          "name": "Antep Usulü Karışık Dolma ve Yoğurt",
          "caption": "Antep Usulü Karışık Dolma ve Yoğurt",
          "image": "./images/antep-usulu-karisik-dolma-ve-yogurt.jpg"
        }
      ]
    },
    {
      "key": "indirimli-menu-yan-lezzetler-1",
      "description": "1. Yan Lezzetinizi Seçin",
      "orderTag": "Menü Yan Lezzetler",
      "items": [
        {
          "name": "Nohutlu Pirinç Pilavı",
          "image": "./images/nohutlu-sehriyeli-pirinc-pilavi.jpg"
        },
        {
          "name": "Domatesli Bulgur Pilavı",
          "image": "./images/domatesli-bulgur-pilavi.jpg"
        },
        {
          "name": "Kaşarlı Patates Püresi",
          "image": "./images/kasarli-patates-puresi.jpg"
        },
        {
          "name": "Mini İçli Köfte",
          "image": "./images/mini-icli-kofte.jpg"
        },
        {
          "name": "Kadınbudu Köfte",
          "image": "./images/kadinbudu-kofte.jpg"
        },
        {
          "name": "İnce Kıyım Şakşuka",
          "image": "./images/ince-kiyim-saksuka.jpg"
        },
        {
          "name": "Barbunya Pilaki",
          "image": "./images/barbunya-pilaki.jpg"
        },
        {
          "name": "Tereyağlı Cevizli Erişte",
          "image": "./images/tereyagli-cevizli-eriste.jpg"
        },
        {
          "name": "Baharatlı Fırın Patates",
          "image": "./images/baharatli-firin-patates.jpg"
        }
      ]
    },
    {
      "key": "indirimli-menu-yan-lezzetler-2",
      "description": "2. Yan Lezzetinizi Seçin",
      "orderTag": "Menü Yan Lezzetler",
      "items": [
        {
          "name": "Nohutlu Pirinç Pilavı",
          "image": "./images/nohutlu-sehriyeli-pirinc-pilavi.jpg"
        },
        {
          "name": "Domatesli Bulgur Pilavı",
          "image": "./images/domatesli-bulgur-pilavi.jpg"
        },
        {
          "name": "Kaşarlı Patates Püresi",
          "image": "./images/kasarli-patates-puresi.jpg"
        },
        {
          "name": "Mini İçli Köfte",
          "image": "./images/mini-icli-kofte.jpg"
        },
        {
          "name": "Kadınbudu Köfte",
          "image": "./images/kadinbudu-kofte.jpg"
        },
        {
          "name": "İnce Kıyım Şakşuka",
          "image": "./images/ince-kiyim-saksuka.jpg"
        },
        {
          "name": "Barbunya Pilaki",
          "image": "./images/barbunya-pilaki.jpg"
        },
        {
          "name": "Tereyağlı Cevizli Erişte",
          "image": "./images/tereyagli-cevizli-eriste.jpg"
        },
        {
          "name": "Baharatlı Fırın Patates",
          "image": "./images/baharatli-firin-patates.jpg"
        }
      ]
    },
    {
      "key": "indirimli-menu-tatli",
      "description": "Dilerseniz ilave Tatlı alabilirsiniz.",
      "items": [
        {
          "name": "Çekoslovak Güneşi",
          "image": "./images/cekoslavak-gunesi.jpg",
          "price": "7,2"
        },
        {
          "name": "Siyah İnci",
          "image": "./images/siyah-inci-dilim.jpg",
          "price": "7,2"
        },
        {
          "name": "Çikolatalı Sufle",
          "image": "./images/cikolatali-sufle.jpg",
          "price": "7,2"
        },
        {
          "name": "Kuş Sütü",
          "image": "./images/kus-sutu.jpg",
          "price": "7,2"
        },
        {
          "name": "Frambuazlı Cheesecake",
          "image": "./images/frambuazli-cheesecake.jpg",
          "price": "7,2"
        },
        {
          "name": "Çikolatalı Brownie",
          "image": "./images/cikolatali-brownie.jpg",
          "price": "7,2"
        },
        {
          "name": "İrmik Helvası",
          "image": "./images/irmik-helvasi.jpg",
          "price": "7,2"
        },
        {
          "name": null,
          "caption": "Tatlı İstemiyorum",
          "image": "./images/istemiyorum.jpg",
          "price": "7,2"
        }
      ]
    },
    {
      "key": "indirimli-menu-icecek",
      "description": "Dilerseniz Menünüze İçecek Ekleyebilirsiniz.",
      "items": [
        {
          "name": "Coca-Cola Kutu",
          "image": "./images/coca-cola-kutu-330ml.jpg",
          "items": [
            {
              "name": "Coca-Cola Kutu",
              "image": "./images/coca-cola-kutu-330ml.jpg",
              "price": "3"
            },
            {
              "name": "Coca-Cola Light Kutu",
              "image": "./images/coca-cola-light-kutu.jpg",
              "price": "3"
            },
            {
              "name": "Coca-Cola Zero Kutu",
              "image": "./images/coca-cola-zero-kutu.jpg",
              "price": "3"
            },
            {
              "name": "Coca-Cola Cam Şişe",
              "image": "./images/coca-cola-cam-sise.jpg"
            },
            {
              "name": "Coca-Cola Light Cam Şişe",
              "image": "./images/coca-cola-light-cam-sise.jpg"
            },
            {
              "name": "Coca-Cola Zero Cam Şişe",
              "image": "./images/coca-cola-zero-cam-sise.jpg"
            }
          ]
        },
        {
          "name": "Fanta Portakal Kutu",
          "caption": "Fanta",
          "image": "./images/fanta-portakal-kutu.jpg",
          "price": "3"
        },
        {
          "name": "Sprite Kutu",
          "caption": "Sprite",
          "image": "./images/sprite-kutu.jpg",
          "price": "3"
        },
        {
          "name": "Guarana Antarctica Gazlı İçecek",
          "image": "./images/guarana-antarctica-gazli-icecek.jpg",
          "price": "5"
        },
        {
          "name": "Damla Su",
          "image": "./images/damla-su.jpg",
          "price": "1"
        }
      ]
    }
  ]
};
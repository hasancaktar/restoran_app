
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
      "description": "Sipari??inizi olu??turun",
      "items": [
        {
          "name": "??ndirimli Men??ler",
          "caption": "??ndirimli Men??ler",
          "image": "./images/kirmizi-et-menu.jpg",
          "items": [
            {
              "name": "K??rm??z?? Et Men??",
              "caption": "K??rm??z?? Et Men??",
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
              "name": "Beyaz Et Men??",
              "caption": "Beyaz Et Men??",
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
              "name": "Sebzeli / Etli Men??",
              "caption": "Sebzeli / Etli Men??",
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
              "name": "Diyet Men??",
              "caption": "Diyet Men??",
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
              "name": "4 Ki??ilik Men?? - Etli Yaprak Sarma",
              "caption": "4 Ki??ilik Men?? - Etli Yaprak Sarma",
              "price": "44",
              "image": "./images/4-kisilik-menu-etli-yaprak-sarma.jpg"
            },
            {
              "name": "Coca-Cola Men??",
              "caption": "Coca-Cola Men??",
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
              "name": "4 Ki??ilik Men?? - K??ri Soslu Tavuk",
              "caption": "4 Ki??ilik Men?? - K??ri Soslu Tavuk",
              "price": "55",
              "image": "./images/4-kisilik-menu-kori-soslu-tavuk.jpg"
            },
            {
              "name": "4 Ki??ilik Men?? - ??sve?? K??fte",
              "caption": "4 Ki??ilik Men?? - ??sve?? K??fte",
              "price": "66",
              "image": "./images/4-kisilik-menu-isvec-kofte.jpg"
            },
            {
              "name": "Vejetaryen Men??",
              "caption": "Vejetaryen Men??",
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
          "name": "K??rm??z?? Et Yemekleri",
          "caption": "K??rm??z?? Et Yemekleri",
          "image": "./images/hunkar-begendi.jpg",
          "items": [
            {
              "name": "H??nkarbe??endi",
              "caption": "H??nkarbe??endi",
              "price": "17,45",
              "image": "./images/hunkar-begendi.jpg"
            },
            {
              "name": "Domates Soslu ??sve?? K??fte",
              "caption": "Domates Soslu ??sve?? K??fte",
              "price": "17,45",
              "image": "./images/isvec-kofte.jpg"
            },
            {
              "name": "Patates P??resi Yata????nda K??fte",
              "caption": "Patates P??resi Yata????nda K??fte",
              "price": "14,75",
              "image": "./images/patates-puresi-yataginda-kofte.jpg"
            },
            {
              "name": "Be??endi Yata????nda K??fte",
              "caption": "Be??endi Yata????nda K??fte",
              "price": "14,75",
              "image": "./images/begendi-yataginda-kofte.jpg"
            },
            {
              "name": "Izgara K??fte ve Kar??????k Sebze",
              "caption": "Izgara K??fte ve Kar??????k Sebze",
              "price": "14,75",
              "image": "./images/izgara-kofte-ve-karisik-sebze.jpg"
            },
            {
              "name": "Orman Kebab??",
              "caption": "Orman Kebab??",
              "price": "14,75",
              "image": "./images/orman-kebabi.jpg"
            },
            {
              "name": "Dana Kavurma ve ??ehriyeli Pilav",
              "caption": "Dana Kavurma ve ??ehriyeli Pilav",
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
              "name": "Etli Asma Yapra???? Sarma ve Yo??urt",
              "caption": "Etli Asma Yapra???? Sarma ve Yo??urt",
              "price": "17,45",
              "image": "./images/etli-yaprak-sarma-ve-yogurt.jpg"
            },
            {
              "name": "Zerde??al Soslu Kar??????k Sebze",
              "caption": "Zerde??al Soslu Kar??????k Sebze",
              "price": "17,45",
              "image": "./images/zerdecal-soslu-karisik-sebze.jpg"
            },
            {
              "name": "Ac?? Soslu Patl??canl?? Fettuccine",
              "caption": "Ac?? Soslu Patl??canl?? Fettuccine",
              "price": "14,75",
              "image": "./images/aci-soslu-patlicanli-fettucine.jpg"
            },
            {
              "name": "F??r??nlanm???? Beyaz Nohut",
              "caption": "F??r??nlanm???? Beyaz Nohut",
              "price": "14,75",
              "image": "./images/firinlanmis-beyaz-nohut.jpg"
            },
            {
              "name": "K??ymal?? Ispanak Oturtma ve Yo??urt",
              "caption": "K??ymal?? Ispanak Oturtma ve Yo??urt",
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
              "name": "T??rl??",
              "caption": "T??rl??",
              "price": "14,75",
              "image": "./images/turlu.jpg"
            },
            {
              "name": "Antep Usul?? Kar??????k Dolma ve Yo??urt",
              "caption": "Antep Usul?? Kar??????k Dolma ve Yo??urt",
              "price": "14,75",
              "image": "./images/antep-usulu-karisik-dolma-ve-yogurt.jpg"
            },
            {
              "name": "K??ymal?? Ye??il Mercimek",
              "caption": "K??ymal?? Ye??il Mercimek",
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
              "name": "Mo??ol Usul?? Sebzeli Tavuklu Eri??te",
              "caption": "Mo??ol Usul?? Sebzeli Tavuklu Eri??te",
              "price": "17,45",
              "image": "./images/soya-soslu-tavuklu-sebzeli-noodle.jpg"
            },
            {
              "name": "K??ri Soslu Mantarl?? Tavuk",
              "caption": "K??ri Soslu Mantarl?? Tavuk",
              "price": "17,45",
              "image": "./images/kori-soslu-mantarli-tavuk.jpg"
            },
            {
              "name": "Pili?? Piccata ve Fettuccine",
              "caption": "Pili?? Piccata ve Fettuccine",
              "price": "14,75",
              "image": "./images/pilic-piccata-ve-fettucine.jpg"
            },
            {
              "name": "F??r??n Tavuk ve ??ehriyeli Pilav",
              "caption": "F??r??n Tavuk ve ??ehriyeli Pilav",
              "price": "14,75",
              "image": "./images/pilav-ustu-firin-tavuk.jpg"
            },
            {
              "name": "Izgara Tavuk ve Kar??????k Sebze",
              "caption": "Izgara Tavuk ve Kar??????k Sebze",
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
          "name": "??orba",
          "caption": "??orba",
          "image": "./images/firinlanmis-tereyagli-mercimek-corbasi.jpg",
          "items": [
            {
              "name": "F??r??nlanm???? Tereya??l?? Mercimek ??orbas??",
              "caption": "F??r??nlanm???? Tereya??l?? Mercimek ??orbas??",
              "price": "7",
              "image": "./images/firinlanmis-tereyagli-mercimek-corbasi.jpg"
            },
            {
              "name": "Naneli Yo??urt ??orbas??",
              "caption": "Naneli Yo??urt ??orbas??",
              "price": "8",
              "image": "./images/naneli-yogurt-corbasi.jpg"
            },
            {
              "name": "S??tl?? Brokoli ??orbas??",
              "caption": "S??tl?? Brokoli ??orbas??",
              "price": "8",
              "image": "./images/sutlu-brokoli-corbasi.jpg"
            }
          ]
        },
        {
          "name": "Zeytinya??l??lar",
          "caption": "Zeytinya??l??lar",
          "image": "./images/zeytinyagli-brokoli.jpg",
          "items": [
            {
              "name": "Zeytinya???? Soslu Brokoli",
              "caption": "Zeytinya???? Soslu Brokoli",
              "price": "17,45",
              "image": "./images/zeytinyagli-brokoli.jpg"
            },
            {
              "name": "Zeytinya???? Soslu Br??ksel Lahanas??",
              "caption": "Zeytinya???? Soslu Br??ksel Lahanas??",
              "price": "17,45",
              "image": "./images/zeytinyagli-bruksel-lahanasi.jpg"
            },
            {
              "name": "Zerde??al Soslu Kar??????k Sebze (Mini)",
              "caption": "Zerde??al Soslu Kar??????k Sebze (Mini)",
              "price": "14,75",
              "image": "./images/mini-karisik-sebze.jpg"
            },
            {
              "name": "Balzamik Soslu Bu??day Salata (Mini)",
              "caption": "Balzamik Soslu Bu??day Salata (Mini)",
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
              "name": "Venedik Soslu Kinoal?? Ye??il Salata",
              "caption": "Venedik Soslu Kinoal?? Ye??il Salata",
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
              "name": "Nohutlu Pirin?? Pilav??",
              "caption": "Nohutlu Pirin?? Pilav??",
              "price": "4,95",
              "image": "./images/nohutlu-sehriyeli-pirinc-pilavi.jpg"
            },
            {
              "name": "Domatesli Bulgur Pilav??",
              "caption": "Domatesli Bulgur Pilav??",
              "price": "4,95",
              "image": "./images/domatesli-bulgur-pilavi.jpg"
            },
            {
              "name": "Ka??arl?? Patates P??resi",
              "caption": "Ka??arl?? Patates P??resi",
              "price": "4,95",
              "image": "./images/kasarli-patates-puresi.jpg"
            },
            {
              "name": "Mini ????li K??fte",
              "caption": "Mini ????li K??fte",
              "price": "6,45",
              "image": "./images/mini-icli-kofte.jpg"
            },
            {
              "name": "Kad??nbudu K??fte",
              "caption": "Kad??nbudu K??fte",
              "price": "6,45",
              "image": "./images/kadinbudu-kofte.jpg"
            },
            {
              "name": "??nce K??y??m ??ak??uka",
              "caption": "??nce K??y??m ??ak??uka",
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
              "name": "Tereya??l?? Cevizli Eri??te",
              "caption": "Tereya??l?? Cevizli Eri??te",
              "price": "4,95",
              "image": "./images/tereyagli-cevizli-eriste.jpg"
            },
            {
              "name": "Baharatl?? F??r??n Patates",
              "caption": "Baharatl?? F??r??n Patates",
              "price": "4,95",
              "image": "./images/baharatli-firin-patates.jpg"
            }
          ]
        },
        {
          "name": "Tatl??",
          "caption": "Tatl??",
          "image": "./images/cekoslavak-gunesi.jpg",
          "items": [
            {
              "name": "??ekoslovak G??ne??i",
              "caption": "??ekoslovak G??ne??i",
              "price": "7,45",
              "image": "./images/cekoslavak-gunesi.jpg"
            },
            {
              "name": "Siyah ??nci",
              "caption": "Siyah ??nci",
              "price": "7,45",
              "image": "./images/siyah-inci-dilim.jpg"
            },
            {
              "name": "??ikolatal?? Sufle",
              "caption": "??ikolatal?? Sufle",
              "price": "7,75",
              "image": "./images/cikolatali-sufle.jpg"
            },
            {
              "name": "Ku?? S??t??",
              "caption": "Ku?? S??t??",
              "price": "8,75",
              "image": "./images/kus-sutu.jpg"
            },
            {
              "name": "Frambuazl?? Cheesecake",
              "caption": "Frambuazl?? Cheesecake",
              "price": "6,75",
              "image": "./images/frambuazli-cheesecake.jpg"
            },
            {
              "name": "??ikolatal?? Brownie",
              "caption": "??ikolatal?? Brownie",
              "price": "8,75",
              "image": "./images/cikolatali-brownie.jpg"
            },
            {
              "name": "??rmik Helvas??",
              "caption": "??rmik Helvas??",
              "price": "7,75",
              "image": "./images/irmik-helvasi.jpg"
            }
          ]
        },
        {
          "name": "Gazs??z ????ecekler",
          "caption": "Gazs??z ????ecekler",
          "image": "./images/damla-su.jpg",
          "items": [
            {
              "name": "Cappy Portakal Suyu",
              "caption": "Cappy Portakal Suyu",
              "price": "3,85",
              "image": "./images/cappy-portakal-suyu.jpg"
            },
            {
              "name": "Cappy ??eftali",
              "caption": "Cappy ??eftali",
              "price": "3,85",
              "image": "./images/cappy-seftali.jpg"
            },
            {
              "name": "Cappy Vi??ne Suyu",
              "caption": "Cappy Vi??ne Suyu",
              "price": "3,85",
              "image": "./images/cappy-visne-suyu.jpg"
            },
            {
              "name": "S??ta?? Ayran",
              "caption": "S??ta?? Ayran",
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
              "name": "Fuse Tea ??eftali Kutu",
              "caption": "Fuse Tea ??eftali Kutu",
              "price": "3,85",
              "image": "./images/fuse-tea-seftali.jpg"
            },
            {
              "name": "Soya S??t?? Sade",
              "caption": "Soya S??t?? Sade",
              "price": "5,85",
              "image": "./images/alpro-soya-sutu-sade.jpg"
            },
            {
              "name": "Soya S??t?? ??ilekli",
              "caption": "Soya S??t?? ??ilekli",
              "price": "5,85",
              "image": "./images/alpro-soya-sutu-cilekli.jpg"
            },
            {
              "name": "Soya S??t?? ??ikolatal??",
              "caption": "Soya S??t?? ??ikolatal??",
              "price": "5,85",
              "image": "./images/alpro-soya-sutu-cikolatali.jpg"
            },
            {
              "name": "Elmal??&Tar????nl?? Demlendirilmi?? Su",
              "caption": "Elmal??&Tar????nl?? Demlendirilmi?? Su",
              "price": "5,85",
              "image": "./images/found-elmaliandtarcinli-demlendirilmis-su.jpg"
            },
            {
              "name": "Naneli&Salatal??kl?? Demlendirilmi?? Su",
              "caption": "Naneli&Salatal??kl?? Demlendirilmi?? Su",
              "price": "5,85",
              "image": "./images/found-naneliandsalatalikli-demlendirilmis-su.jpg"
            },
            {
              "name": "Limonlu Demlendirilmi?? Su",
              "caption": "Limonlu Demlendirilmi?? Su",
              "price": "5,85",
              "image": "./images/found-limonlu-demlendirilmis-su-330ml.jpg"
            },
            {
              "name": "M??rver ??i??ekli Demlendirilmi?? Su",
              "caption": "M??rver ??i??ekli Demlendirilmi?? Su",
              "price": "5,85",
              "image": "./images/found-murver-cicekli-demlendirilmis-su-330ml.jpg"
            },
            {
              "name": "Enjoy Smoothie ??ilek&Muz",
              "caption": "Enjoy Smoothie ??ilek&Muz",
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
              "name": "Enjoy S??kma Portakal Suyu",
              "caption": "Enjoy S??kma Portakal Suyu",
              "price": "5,85",
              "image": "./images/enjoy-sikma-portakal-suyu.jpg"
            },
            {
              "name": "Fuse Tea Limon Cam ??i??e",
              "caption": "Fuse Tea Limon Cam ??i??e",
              "price": "3,85",
              "image": "./images/fuse-tea-limon-cam-sise-250ml.jpg"
            },
            {
              "name": "Fuse Tea ??eftali Cam ??i??e",
              "caption": "Fuse Tea ??eftali Cam ??i??e",
              "price": "3,85",
              "image": "./images/fuse-tea-seftali-cam-sise-250ml.jpg"
            },
            {
              "name": "Cappy ??eftali Suyu Cam ??i??e",
              "caption": "Cappy ??eftali Suyu Cam ??i??e",
              "price": "3,85",
              "image": "./images/cappy-seftali-suyu-cam-sise-250ml.jpg"
            },
            {
              "name": "Cappy Portakal Suyu Cam ??i??e",
              "caption": "Cappy Portakal Suyu Cam ??i??e",
              "price": "3,85",
              "image": "./images/cappy-portakal-suyu-cam-sise-250ml.jpg"
            },
            {
              "name": "Cappy Vi??ne Suyu Cam ??i??e",
              "caption": "Cappy Vi??ne Suyu Cam ??i??e",
              "price": "3,85",
              "image": "./images/cappy-visne-suyu-cam-sise-250ml.jpg"
            }
          ]
        },
        {
          "name": "Gazl?? ????ecek",
          "caption": "Gazl?? ????ecek",
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
              "name": "Guarana Antarctica Gazl?? ????ecek",
              "caption": "Guarana Antarctica Gazl?? ????ecek",
              "price": "14,75",
              "image": "./images/guarana-antarctica-gazli-icecek.jpg"
            },
            {
              "name": "Coca-Cola Light Cam ??i??e",
              "caption": "Coca-Cola Light Cam ??i??e",
              "price": "14,75",
              "image": "./images/coca-cola-light-cam-sise.jpg"
            },
            {
              "name": "Coca-Cola Cam ??i??e",
              "caption": "Coca-Cola Cam ??i??e",
              "price": "14,75",
              "image": "./images/coca-cola-cam-sise.jpg"
            },
            {
              "name": "Coca-Cola Zero Cam ??i??e",
              "caption": "Coca-Cola Zero Cam ??i??e",
              "price": "14,75",
              "image": "./images/coca-cola-zero-cam-sise.jpg"
            }
          ]
        }
      ]
    },
    {
      "key": "kirmizi-et-ana-yemekler",
      "description": "Ana Yeme??inizi Se??in",
      "orderTag": "K??rm??z?? Et - Ana Lezzetler",
      "items": [
        {
          "name": "H??nkarbe??endi",
          "image": "./images/hunkar-begendi.jpg",
          "price": "2,7"
        },
        {
          "name": "Domates Soslu ??sve?? K??fte",
          "image": "./images/isvec-kofte.jpg"
        },
        {
          "name": "Patates P??resi Yata????nda K??fte",
          "image": "./images/patates-puresi-yataginda-kofte.jpg"
        },
        {
          "name": "Be??endi Yata????nda K??fte",
          "image": "./images/begendi-yataginda-kofte.jpg"
        },
        {
          "name": "Izgara K??fte ve Kar??????k Sebze",
          "image": "./images/izgara-kofte-ve-karisik-sebze.jpg"
        },
        {
          "name": "Orman Kebab??",
          "image": "./images/orman-kebabi.jpg"
        },
        {
          "name": "Dana Kavurma ve ??ehriyeli Pilav",
          "image": "./images/dana-kavurma-ve-sehriyeli-pilav.jpg",
          "price": "7,2"
        }
      ]
    },
    {
      "key": "beyaz-et-ana-yemekler",
      "description": "Ana Yeme??inizi Se??in",
      "orderTag": "Beyaz Et - Ana Lezzetler",
      "items": [
        {
          "name": "Mo??ol Usul?? Sebzeli Tavuklu Eri??te",
          "image": "./images/soya-soslu-tavuklu-sebzeli-noodle.jpg",
          "price": "2,7"
        },
        {
          "name": "K??ri Soslu Mantarl?? Tavuk",
          "image": "./images/kori-soslu-mantarli-tavuk.jpg"
        },
        {
          "name": "Pili?? Piccata ve Fettuccine",
          "image": "./images/pilic-piccata-ve-fettucine.jpg"
        },
        {
          "name": "F??r??n Tavuk ve ??ehriyeli Pilav",
          "image": "./images/pilav-ustu-firin-tavuk.jpg"
        },
        {
          "name": "Izgara Tavuk ve Kar??????k Sebze",
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
      "description": "Ana Yeme??inizi Se??in",
      "orderTag": "Sebzeli Etli Men?? - Ana Lezzetler",
      "items": [
        {
          "name": "Etli Asma Yapra???? Sarma ve Yo??urt",
          "caption": "Etli Asma Yapra???? Sarma ve Yo??urt",
          "image": "./images/etli-yaprak-sarma-ve-yogurt.jpg"
        },
        {
          "name": "Zerde??al Soslu Kar??????k Sebze",
          "caption": "Zerde??al Soslu Kar??????k Sebze",
          "price": "1",
          "image": "./images/zerdecal-soslu-karisik-sebze.jpg"
        },
        {
          "name": "Ac?? Soslu Patl??canl?? Fettuccine",
          "caption": "Ac?? Soslu Patl??canl?? Fettuccine",
          "price": "1,75",
          "image": "./images/aci-soslu-patlicanli-fettucine.jpg"
        },
        {
          "name": "F??r??nlanm???? Beyaz Nohut",
          "caption": "F??r??nlanm???? Beyaz Nohut",
          "image": "./images/firinlanmis-beyaz-nohut.jpg"
        },
        {
          "name": "K??ymal?? Ispanak Oturtma ve Yo??urt",
          "caption": "K??ymal?? Ispanak Oturtma ve Yo??urt",
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
          "name": "T??rl??",
          "caption": "T??rl??",
          "image": "./images/turlu.jpg"
        },
        {
          "name": "Antep Usul?? Kar??????k Dolma ve Yo??urt",
          "caption": "Antep Usul?? Kar??????k Dolma ve Yo??urt",
          "price": "3,25",
          "image": "./images/antep-usulu-karisik-dolma-ve-yogurt.jpg"
        },
        {
          "name": "K??ymal?? Ye??il Mercimek",
          "caption": "K??ymal?? Ye??il Mercimek",
          "image": "./images/kiymali-yesil-mercimek.jpg"
        }
      ]
    },
    {
      "key": "diyet-indirimli-menu-ana-yemekler",
      "description": "Ana Yeme??inizi Se??in",
      "orderTag": "Diyet Menu - Ana Lezzetler",
      "items": [
        {
          "name": "K??ymal?? Ispanak Oturtma ve Yo??urt",
          "caption": "K??ymal?? Ispanak Oturtma ve Yo??urt",
          "image": "./images/kiymali-ispanak-oturtma-ve-yogurt.jpg"
        },
        {
          "name": "Zerde??al Soslu Kar??????k Sebze",
          "caption": "Zerde??al Soslu Kar??????k Sebze",
          "price": "1",
          "image": "./images/zerdecal-soslu-karisik-sebze.jpg"
        },
        {
          "name": "Venedik Soslu Kinoal?? Ye??il Salata",
          "caption": "Venedik Soslu Kinoal?? Ye??il Salata",
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
          "name": "T??rl??",
          "caption": "T??rl??",
          "image": "./images/turlu.jpg"
        },
        {
          "name": "F??r??nlanm???? Beyaz Nohut",
          "caption": "F??r??nlanm???? Beyaz Nohut",
          "price": "2",
          "image": "./images/firinlanmis-beyaz-nohut.jpg"
        },
        {
          "name": "Izgara Tavuk ve Kar??????k Sebze",
          "caption": "Izgara Tavuk ve Kar??????k Sebze",
          "image": "./images/izgara-tavuk-ve-karisik-sebze.jpg"
        },
        {
          "name": "K??ymal?? Ye??il Mercimek",
          "caption": "K??ymal?? Ye??il Mercimek",
          "price": "3,25",
          "image": "./images/kiymali-yesil-mercimek.jpg"
        },
        {
          "name": "Orman Kebab??",
          "caption": "Orman Kebab??",
          "image": "./images/orman-kebabi.jpg"
        }
      ]
    },
    {
      "key": "vejeteryan-indirimli-menu-ana-yemekler",
      "description": "Ana Yeme??inizi Se??in",
      "orderTag": "Vejeteryan Men?? - Ana Lezzetler",
      "items": [
        {
          "name": "Kabak Kalye",
          "caption": "Kabak Kalye",
          "image": "./images/kabak-kalye.jpg"
        },
        {
          "name": "Ac?? Soslu Patl??canl?? Fettuccine",
          "caption": "Ac?? Soslu Patl??canl?? Fettuccine",
          "price": "1",
          "image": "./images/aci-soslu-patlicanli-fettucine.jpg"
        },
        {
          "name": "Zerde??al Soslu Kar??????k Sebze",
          "caption": "Zerde??al Soslu Kar??????k Sebze",
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
          "name": "T??rl??",
          "caption": "T??rl??",
          "image": "./images/turlu.jpg"
        },
        {
          "name": "F??r??nlanm???? Beyaz Nohut",
          "caption": "F??r??nlanm???? Beyaz Nohut",
          "price": "2",
          "image": "./images/firinlanmis-beyaz-nohut.jpg"
        },
        {
          "name": "Izgara Tavuk ve Kar??????k Sebze",
          "caption": "Izgara Tavuk ve Kar??????k Sebze",
          "image": "./images/izgara-tavuk-ve-karisik-sebze.jpg"
        },
        {
          "name": "K??ymal?? Ye??il Mercimek",
          "caption": "K??ymal?? Ye??il Mercimek",
          "price": "3,25",
          "image": "./images/kiymali-yesil-mercimek.jpg"
        },
        {
          "name": "Orman Kebab??",
          "caption": "Orman Kebab??",
          "image": "./images/orman-kebabi.jpg"
        },
        {
          "name": "Zerde??al Soslu Kar??????k Sebze",
          "caption": "Zerde??al Soslu Kar??????k Sebze",
          "image": "./images/zerdecal-soslu-karisik-sebze.jpg"
        }
      ]
    },
    {
      "key": "cocacola-indirimli-menu-ana-yemekler",
      "description": "Ana Yeme??inizi Se??in",
      "orderTag": "Coca Cola Men?? - Ana Lezzetler",
      "items": [
        {
          "name": "Orman Kebab??",
          "caption": "Orman Kebab??",
          "image": "./images/orman-kebabi.jpg"
        },
        {
          "name": "Be??endi Yata????nda K??fte",
          "caption": "Be??endi Yata????nda K??fte",
          "price": "1",
          "image": "./images/begendi-yataginda-kofte.jpg"
        },
        {
          "name": "Patates P??resi Yata????nda K??fte",
          "caption": "Patates P??resi Yata????nda K??fte",
          "price": "1,75",
          "image": "./images/patates-puresi-yataginda-kofte.jpg"
        },
        {
          "name": "Izgara K??fte ve Kar??????k Sebze",
          "caption": "Izgara K??fte ve Kar??????k Sebze",
          "image": "./images/izgara-kofte-ve-karisik-sebze.jpg"
        },
        {
          "name": "Dana Kavurma ve ??ehriyeli Pilav",
          "caption": "Dana Kavurma ve ??ehriyeli Pilav",
          "image": "./images/dana-kavurma-ve-sehriyeli-pilav.jpg"
        },
        {
          "name": "Izgara Tavuk ve Kar??????k Sebze",
          "caption": "Izgara Tavuk ve Kar??????k Sebze",
          "image": "./images/izgara-tavuk-ve-karisik-sebze.jpg"
        },
        {
          "name": "F??r??n Tavuk ve ??ehriyeli Pilav",
          "caption": "F??r??n Tavuk ve ??ehriyeli Pilav",
          "price": "2",
          "image": "./images/pilav-ustu-firin-tavuk.jpg"
        },
        {
          "name": "Mo??ol Usul?? Sebzeli Tavuklu Eri??te",
          "caption": "Mo??ol Usul?? Sebzeli Tavuklu Eri??te",
          "image": "./images/soya-soslu-tavuklu-sebzeli-noodle.jpg"
        },
        {
          "name": "Pili?? Piccata ve Fettuccine",
          "caption": "Pili?? Piccata ve Fettuccine",
          "price": "3,25",
          "image": "./images/pilic-piccata-ve-fettucine.jpg"
        },
        {
          "name": "Etli Asma Yapra???? Sarma ve Yo??urt",
          "caption": "Etli Asma Yapra???? Sarma ve Yo??urt",
          "image": "./images/etli-yaprak-sarma-ve-yogurt.jpg"
        },
        {
          "name": "T??rl??",
          "caption": "T??rl??",
          "image": "./images/turlu.jpg"
        },
        {
          "name": "Zerde??al Soslu Kar??????k Sebze",
          "caption": "Zerde??al Soslu Kar??????k Sebze",
          "image": "./images/zerdecal-soslu-karisik-sebze.jpg"
        },
        {
          "name": "Domates Soslu ??sve?? K??fte",
          "caption": "Domates Soslu ??sve?? K??fte",
          "image": "./images/isvec-kofte.jpg"
        },
        {
          "name": "H??nkarbe??endi",
          "caption": "H??nkarbe??endi",
          "image": "./images/hunkar-begendi.jpg"
        },
        {
          "name": "Veggie Lazanya",
          "caption": "Veggie Lazanya",
          "image": "./images/veggie-lazanya.jpg"
        },
        {
          "name": "K??ri Soslu Mantarl?? Tavuk",
          "caption": "K??ri Soslu Mantarl?? Tavuk",
          "image": "./images/kori-soslu-mantarli-tavuk.jpg"
        },
        {
          "name": "K??ymal?? Ye??il Mercimek",
          "caption": "K??ymal?? Ye??il Mercimek",
          "image": "./images/kiymali-yesil-mercimek.jpg"
        },
        {
          "name": "Ac?? Soslu Patl??canl?? Fettuccine",
          "caption": "Ac?? Soslu Patl??canl?? Fettuccine",
          "image": "./images/aci-soslu-patlicanli-fettucine.jpg"
        },
        {
          "name": "F??r??nlanm???? Beyaz Nohut",
          "caption": "F??r??nlanm???? Beyaz Nohut",
          "image": "./images/firinlanmis-beyaz-nohut.jpg"
        },
        {
          "name": "K??ymal?? Ispanak Oturtma ve Yo??urt",
          "caption": "K??ymal?? Ispanak Oturtma ve Yo??urt",
          "image": "./images/kiymali-ispanak-oturtma-ve-yogurt.jpg"
        },
        {
          "name": "Somon Izgara",
          "caption": "Somon Izgara",
          "image": "./images/somon-izgara.jpg"
        },
        {
          "name": "Antep Usul?? Kar??????k Dolma ve Yo??urt",
          "caption": "Antep Usul?? Kar??????k Dolma ve Yo??urt",
          "image": "./images/antep-usulu-karisik-dolma-ve-yogurt.jpg"
        }
      ]
    },
    {
      "key": "indirimli-menu-yan-lezzetler-1",
      "description": "1. Yan Lezzetinizi Se??in",
      "orderTag": "Men?? Yan Lezzetler",
      "items": [
        {
          "name": "Nohutlu Pirin?? Pilav??",
          "image": "./images/nohutlu-sehriyeli-pirinc-pilavi.jpg"
        },
        {
          "name": "Domatesli Bulgur Pilav??",
          "image": "./images/domatesli-bulgur-pilavi.jpg"
        },
        {
          "name": "Ka??arl?? Patates P??resi",
          "image": "./images/kasarli-patates-puresi.jpg"
        },
        {
          "name": "Mini ????li K??fte",
          "image": "./images/mini-icli-kofte.jpg"
        },
        {
          "name": "Kad??nbudu K??fte",
          "image": "./images/kadinbudu-kofte.jpg"
        },
        {
          "name": "??nce K??y??m ??ak??uka",
          "image": "./images/ince-kiyim-saksuka.jpg"
        },
        {
          "name": "Barbunya Pilaki",
          "image": "./images/barbunya-pilaki.jpg"
        },
        {
          "name": "Tereya??l?? Cevizli Eri??te",
          "image": "./images/tereyagli-cevizli-eriste.jpg"
        },
        {
          "name": "Baharatl?? F??r??n Patates",
          "image": "./images/baharatli-firin-patates.jpg"
        }
      ]
    },
    {
      "key": "indirimli-menu-yan-lezzetler-2",
      "description": "2. Yan Lezzetinizi Se??in",
      "orderTag": "Men?? Yan Lezzetler",
      "items": [
        {
          "name": "Nohutlu Pirin?? Pilav??",
          "image": "./images/nohutlu-sehriyeli-pirinc-pilavi.jpg"
        },
        {
          "name": "Domatesli Bulgur Pilav??",
          "image": "./images/domatesli-bulgur-pilavi.jpg"
        },
        {
          "name": "Ka??arl?? Patates P??resi",
          "image": "./images/kasarli-patates-puresi.jpg"
        },
        {
          "name": "Mini ????li K??fte",
          "image": "./images/mini-icli-kofte.jpg"
        },
        {
          "name": "Kad??nbudu K??fte",
          "image": "./images/kadinbudu-kofte.jpg"
        },
        {
          "name": "??nce K??y??m ??ak??uka",
          "image": "./images/ince-kiyim-saksuka.jpg"
        },
        {
          "name": "Barbunya Pilaki",
          "image": "./images/barbunya-pilaki.jpg"
        },
        {
          "name": "Tereya??l?? Cevizli Eri??te",
          "image": "./images/tereyagli-cevizli-eriste.jpg"
        },
        {
          "name": "Baharatl?? F??r??n Patates",
          "image": "./images/baharatli-firin-patates.jpg"
        }
      ]
    },
    {
      "key": "indirimli-menu-tatli",
      "description": "Dilerseniz ilave Tatl?? alabilirsiniz.",
      "items": [
        {
          "name": "??ekoslovak G??ne??i",
          "image": "./images/cekoslavak-gunesi.jpg",
          "price": "7,2"
        },
        {
          "name": "Siyah ??nci",
          "image": "./images/siyah-inci-dilim.jpg",
          "price": "7,2"
        },
        {
          "name": "??ikolatal?? Sufle",
          "image": "./images/cikolatali-sufle.jpg",
          "price": "7,2"
        },
        {
          "name": "Ku?? S??t??",
          "image": "./images/kus-sutu.jpg",
          "price": "7,2"
        },
        {
          "name": "Frambuazl?? Cheesecake",
          "image": "./images/frambuazli-cheesecake.jpg",
          "price": "7,2"
        },
        {
          "name": "??ikolatal?? Brownie",
          "image": "./images/cikolatali-brownie.jpg",
          "price": "7,2"
        },
        {
          "name": "??rmik Helvas??",
          "image": "./images/irmik-helvasi.jpg",
          "price": "7,2"
        },
        {
          "name": null,
          "caption": "Tatl?? ??stemiyorum",
          "image": "./images/istemiyorum.jpg",
          "price": "7,2"
        }
      ]
    },
    {
      "key": "indirimli-menu-icecek",
      "description": "Dilerseniz Men??n??ze ????ecek Ekleyebilirsiniz.",
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
              "name": "Coca-Cola Cam ??i??e",
              "image": "./images/coca-cola-cam-sise.jpg"
            },
            {
              "name": "Coca-Cola Light Cam ??i??e",
              "image": "./images/coca-cola-light-cam-sise.jpg"
            },
            {
              "name": "Coca-Cola Zero Cam ??i??e",
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
          "name": "Guarana Antarctica Gazl?? ????ecek",
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
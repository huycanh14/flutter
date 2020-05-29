import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Grid List';

    var data = Data();
    var flickrPhoto = FlickrPhoto.fromMap(data.jsonData['photos']);
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
            crossAxisCount: 3,
            children: flickrPhoto.photo
                .map((p) => Center(child: Image.network(p.urlString())))
                .toList()),
      ),
    );
  }
}

class FlickrPhoto {
  int page, pages;
  List<Photo> photo;
  FlickrPhoto.fromMap(Map snapshot) {
    this.page = snapshot['page'];
    this.pages = snapshot['pages'];
    List photoMap = snapshot['photo'];
    this.photo = photoMap.map((t) => Photo.fromMap(t)).toList();
  }
}

class Photo {
  String id, secret, server, title;
  int farm;
  Photo.fromMap(Map snapshot) {
    this.id = snapshot['id'];
    this.secret = snapshot['secret'];
    this.server = snapshot['server'];
    this.farm = snapshot['farm'];
    this.title = snapshot['title'];
  }

  urlString() {
//     https://farm$farm.staticflickr.com/{server-id}/{id}_{secret}.jpg
    return 'https://farm$farm.staticflickr.com/$server/$id\_$secret.jpg';
  }
}

class Data {
  Map jsonData = {
    "photos": {
        "page": 1,
        "pages": 2431,
        "perpage": 100,
        "total": "243008",
        "photo": [
            {
                "id": "49941281256",
                "owner": "187340257@N04",
                "secret": "9b354c0f4b",
                "server": "65535",
                "farm": 66,
                "title": "May 26, 2020 45221 PM CAT",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941280686",
                "owner": "188607263@N05",
                "secret": "edf2789181",
                "server": "65535",
                "farm": 66,
                "title": "December girl the sweetest most beautiful loving amazing evil yoga shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941278246",
                "owner": "188646080@N06",
                "secret": "7c8bcd3374",
                "server": "65535",
                "farm": 66,
                "title": "Polish_20200426_105453518",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940760653",
                "owner": "187340257@N04",
                "secret": "606d3917d5",
                "server": "65535",
                "farm": 66,
                "title": "May 26, 2020 35353 PM CAT",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941275526",
                "owner": "188607263@N05",
                "secret": "a4e7a499e3",
                "server": "65535",
                "farm": 66,
                "title": "Coffee Black Like My Soul vintage shirt",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941275051",
                "owner": "187340257@N04",
                "secret": "9d02476cc3",
                "server": "65535",
                "farm": 66,
                "title": "May 26, 2020 70729 PM CAT",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941274036",
                "owner": "186643762@N04",
                "secret": "a6b931a97f",
                "server": "65535",
                "farm": 66,
                "title": "Cat turning around",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940757058",
                "owner": "8070463@N03",
                "secret": "529ee849ca",
                "server": "65535",
                "farm": 66,
                "title": "Lisa a bit bored",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941569707",
                "owner": "188607263@N05",
                "secret": "61c347808d",
                "server": "65535",
                "farm": 66,
                "title": "Dolphin Happy July 4th Firework American Flag shirt",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940748273",
                "owner": "188607263@N05",
                "secret": "c37d3ae800",
                "server": "65535",
                "farm": 66,
                "title": "Daddy By Day By Night Gamer Vintage shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941561632",
                "owner": "81788292@N07",
                "secret": "eb11969c71",
                "server": "65535",
                "farm": 66,
                "title": "Cheshire cat and an Orbit...",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941260801",
                "owner": "188607263@N05",
                "secret": "1407a5961a",
                "server": "65535",
                "farm": 66,
                "title": "Escobart Money Pistol shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941555132",
                "owner": "188607263@N05",
                "secret": "bbaae30292",
                "server": "65535",
                "farm": 66,
                "title": "Florida State Seminoles Dad a son’s first hero a daughter’s first love shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941250636",
                "owner": "188607263@N05",
                "secret": "77182a975f",
                "server": "65535",
                "farm": 66,
                "title": "Golden retriever keep your distance please stay 6 feet away vintage shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940729123",
                "owner": "188607263@N05",
                "secret": "4199425e2c",
                "server": "65535",
                "farm": 66,
                "title": "Gods Love Is Fully Inclusive LGBT shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941238416",
                "owner": "188607263@N05",
                "secret": "8154e2697d",
                "server": "65535",
                "farm": 66,
                "title": "Golden retriever keep your distance please stay 6 feet away vintage shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941237701",
                "owner": "188607263@N05",
                "secret": "670c1c0771",
                "server": "65535",
                "farm": 66,
                "title": "Florida Gators Dad a son’s first hero a daughter’s first love shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941532812",
                "owner": "188607263@N05",
                "secret": "d093096825",
                "server": "65535",
                "farm": 66,
                "title": "Florida State Seminoles Dad a son’s first hero a daughter’s first love shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941231076",
                "owner": "188619306@N04",
                "secret": "11f2fa40d5",
                "server": "65535",
                "farm": 66,
                "title": "Beer Yuengling Traditional Lager just drink it shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941528392",
                "owner": "188607263@N05",
                "secret": "e5f1f1d68a",
                "server": "65535",
                "farm": 66,
                "title": "Elephant Yoga Eff You See Kay Why Oh You Vintage shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940711218",
                "owner": "134929301@N06",
                "secret": "014ba6a236",
                "server": "65535",
                "farm": 66,
                "title": "# 00367",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940710713",
                "owner": "188607263@N05",
                "secret": "927d2486fb",
                "server": "65535",
                "farm": 66,
                "title": "Escobart Money Pistol shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941226171",
                "owner": "188619306@N04",
                "secret": "1186e461b8",
                "server": "65535",
                "farm": 66,
                "title": "Play like the Maiden love like the mother think I like the crone shirts",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941525822",
                "owner": "45525146@N08",
                "secret": "eea650fd75",
                "server": "65535",
                "farm": 66,
                "title": "Coucou...",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940705488",
                "owner": "188607263@N05",
                "secret": "8f9fa5e0e6",
                "server": "65535",
                "farm": 66,
                "title": "Dolphin Happy July 4th Firework American Flag shirt",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941519387",
                "owner": "188619306@N04",
                "secret": "1a7a2a0325",
                "server": "65535",
                "farm": 66,
                "title": "God Designed Me Created Me Blesses Me Girls Defends Forgives Loves Me Shirt",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940702573",
                "owner": "188607263@N05",
                "secret": "c0984e4166",
                "server": "65535",
                "farm": 66,
                "title": "Dog paws Grand Paw like regular grandpa but cooler shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941216701",
                "owner": "188607263@N05",
                "secret": "a4976ff88d",
                "server": "65535",
                "farm": 66,
                "title": "December girl the sweetest most beautiful loving amazing evil yoga shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940697868",
                "owner": "188021952@N05",
                "secret": "019a64cf53",
                "server": "65535",
                "farm": 66,
                "title": "Buy SPY Gadgets and Products | +91 9999302406",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941510817",
                "owner": "188619306@N04",
                "secret": "7cfd3e3af8",
                "server": "65535",
                "farm": 66,
                "title": "Floral this girl loves her dog shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940693388",
                "owner": "188607263@N05",
                "secret": "2480990571",
                "server": "65535",
                "farm": 66,
                "title": "Daddy By Day By Night Gamer Vintage shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941210011",
                "owner": "188607263@N05",
                "secret": "952bd5101e",
                "server": "65535",
                "farm": 66,
                "title": "Darth Vader Best Dad in the Galaxy shirt",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941504382",
                "owner": "188619306@N04",
                "secret": "72008f0d13",
                "server": "65535",
                "farm": 66,
                "title": "Elect A Clown Expect A Circus Shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941498137",
                "owner": "188619306@N04",
                "secret": "0841e6e958",
                "server": "65535",
                "farm": 66,
                "title": "Dog Haircuts are overrated life is good 2020 shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940679608",
                "owner": "33244024@N06",
                "secret": "f99a7840ce",
                "server": "65535",
                "farm": 66,
                "title": "Cat",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940678668",
                "owner": "188607263@N05",
                "secret": "76dca83626",
                "server": "65535",
                "farm": 66,
                "title": "Coffee Black Like My Soul vintage shirt",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940677088",
                "owner": "184744497@N04",
                "secret": "053030d65d",
                "server": "65535",
                "farm": 66,
                "title": "Review khóa vân tay cửa kính văn phòng Kitos KT-GL20",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941493927",
                "owner": "184744497@N04",
                "secret": "133bcf187c",
                "server": "65535",
                "farm": 66,
                "title": "Kitos KT-Al520 giải pháp bảo mật và tiện lợi cho khóa cửa nhôm kính",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940675938",
                "owner": "188619306@N04",
                "secret": "acbd8200b8",
                "server": "65535",
                "farm": 66,
                "title": "Dallas Cowboys Damn right I am a Cowboys fan now and forever shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941190906",
                "owner": "188607263@N05",
                "secret": "712fb0d9ab",
                "server": "65535",
                "farm": 66,
                "title": "Chihuahua Happy July 4th American Flag shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940673963",
                "owner": "188607263@N05",
                "secret": "ca891cb610",
                "server": "65535",
                "farm": 66,
                "title": "Chillin’ A On Dirt Road shirt",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940671678",
                "owner": "92505104@N07",
                "secret": "c441c3e0ba",
                "server": "65535",
                "farm": 66,
                "title": "猫",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940670713",
                "owner": "188619306@N04",
                "secret": "5b855cbfaf",
                "server": "65535",
                "farm": 66,
                "title": "Dad You are my favorite Superhero you are the worlds best dad shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941486187",
                "owner": "188607263@N05",
                "secret": "a53e3ffc4e",
                "server": "65535",
                "farm": 66,
                "title": "Born to be a stay at home dog mom paw and tooth Dental Assistant",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941182986",
                "owner": "188607263@N05",
                "secret": "e9e43784fb",
                "server": "65535",
                "farm": 66,
                "title": "Cat Queen Cat shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940665993",
                "owner": "188619306@N04",
                "secret": "565f505fd1",
                "server": "65535",
                "farm": 66,
                "title": "Chicago Cubs Wash Your Damn Hands shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941182061",
                "owner": "58116559@N07",
                "secret": "1b6535ec73",
                "server": "65535",
                "farm": 66,
                "title": "Fundació Privada Vallès Oriental",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941180836",
                "owner": "188607263@N05",
                "secret": "55d0bc1a9f",
                "server": "65535",
                "farm": 66,
                "title": "Black Cat Smoke Eff You See Kay Why Oh You shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941180596",
                "owner": "185732687@N07",
                "secret": "ded5dbe408",
                "server": "65535",
                "farm": 66,
                "title": "Dinh dưỡng và lợi ích sức khỏe của quả xoài",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940660823",
                "owner": "188619306@N04",
                "secret": "d7faf5b865",
                "server": "65535",
                "farm": 66,
                "title": "Cardinals Dad a son’s first hero a daughter’s first love shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941176111",
                "owner": "188607263@N05",
                "secret": "d560bf94eb",
                "server": "65535",
                "farm": 66,
                "title": "Best Papa ever Mason Andrew Connor Jacob Nathan shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940658753",
                "owner": "188607263@N05",
                "secret": "3fbbd5d893",
                "server": "65535",
                "farm": 66,
                "title": "Book The Bronte Sister vintage shirt",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941472252",
                "owner": "188619306@N04",
                "secret": "75c17ea660",
                "server": "65535",
                "farm": 66,
                "title": "Book Fiddle Dee Dee vintage shirt",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941471727",
                "owner": "188607263@N05",
                "secret": "3059384ed8",
                "server": "65535",
                "farm": 66,
                "title": "Bengals Dad a son’s first hero a daughter’s first love shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941467052",
                "owner": "188607263@N05",
                "secret": "8845eece26",
                "server": "65535",
                "farm": 66,
                "title": "Birds aren’t real Bird watching goes both ways shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940649608",
                "owner": "188607263@N05",
                "secret": "c1073bd44b",
                "server": "65535",
                "farm": 66,
                "title": "Baby shark doo doo doo vintage shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940644713",
                "owner": "188607263@N05",
                "secret": "37eb64d580",
                "server": "65535",
                "farm": 66,
                "title": "Alabama Crimson Tide Dad a son’s first hero a daughter’s first love shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941159141",
                "owner": "188619306@N04",
                "secret": "0a884895bd",
                "server": "65535",
                "farm": 66,
                "title": "Bigfoot American Native In The Forest shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941458382",
                "owner": "188607263@N05",
                "secret": "04ca401690",
                "server": "65535",
                "farm": 66,
                "title": "Best GrandDad Ever Guitar Notes Hoodie Sweatshirt – Best Guitar Dad Chords Father’s Day Guitarist T-Shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941154631",
                "owner": "188607263@N05",
                "secret": "b4e7bcc0b5",
                "server": "65535",
                "farm": 66,
                "title": "3d Cute Cat With Purple Eyes shirtsc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941454712",
                "owner": "188619306@N04",
                "secret": "f16c4115ef",
                "server": "65535",
                "farm": 66,
                "title": "Abraham Lincoln’s Birthday American Flag Independence Day shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940633408",
                "owner": "188607263@N05",
                "secret": "9b49ddf7fe",
                "server": "65535",
                "farm": 66,
                "title": "Being a dad is an honor being a papa is priceless shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940632818",
                "owner": "188619306@N04",
                "secret": "b6e252504b",
                "server": "65535",
                "farm": 66,
                "title": "Best goat mom ever vintage shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940626828",
                "owner": "188619306@N04",
                "secret": "e25dd0a23e",
                "server": "65535",
                "farm": 66,
                "title": "Avengers Dad You Are Incredible Graphic Shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941138776",
                "owner": "188607263@N05",
                "secret": "8fdb0bb704",
                "server": "65535",
                "farm": 66,
                "title": "Baby Boba Fett and Baby Groot shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940621338",
                "owner": "188607263@N05",
                "secret": "7467c1d299",
                "server": "65535",
                "farm": 66,
                "title": "3d Cute Cat With Purple Eyes shirtn",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940619353",
                "owner": "7225878@N02",
                "secret": "52c99d8602",
                "server": "65535",
                "farm": 66,
                "title": "Distant Shutingsloe.",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941433697",
                "owner": "7225878@N02",
                "secret": "5d75e25603",
                "server": "65535",
                "farm": 66,
                "title": "Views towards Cheshire.",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941431972",
                "owner": "188607263@N05",
                "secret": "1b415f6350",
                "server": "65535",
                "farm": 66,
                "title": "Star Wars Jedi Academy May The Force Be With You Text Shirtn",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941430772",
                "owner": "188607263@N05",
                "secret": "36910940dc",
                "server": "65535",
                "farm": 66,
                "title": "Alabama Crimson tide A son’s first Hero A daughter’s first love Crimson Tide shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941129166",
                "owner": "23621946@N00",
                "secret": "37f6a7a127",
                "server": "65535",
                "farm": 66,
                "title": "On the prowl",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941426397",
                "owner": "188607263@N05",
                "secret": "12dc06a37c",
                "server": "65535",
                "farm": 66,
                "title": "Sussue Que Necessaire Aussi Vite Que Possible Aussi Lentement",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940607178",
                "owner": "188619306@N04",
                "secret": "a1378c1b46",
                "server": "65535",
                "farm": 66,
                "title": "Abraham Lincoln’s Birthday American Flag Independence Day shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941120556",
                "owner": "188607263@N05",
                "secret": "94759dfbc8",
                "server": "65535",
                "farm": 66,
                "title": "#BeGolden MHS 2020 State Playoffs shirtsc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941119986",
                "owner": "188607263@N05",
                "secret": "58f543f0ee",
                "server": "65535",
                "farm": 66,
                "title": "World’s Dopest Dad Shirt",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940602363",
                "owner": "188619306@N04",
                "secret": "1da82eaa31",
                "server": "65535",
                "farm": 66,
                "title": "Play like the Maiden love like the mother think I like the crone shirts",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941417737",
                "owner": "188436226@N08",
                "secret": "b8075c9bfd",
                "server": "65535",
                "farm": 66,
                "title": "Views towards Cheshire.",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941115561",
                "owner": "188436226@N08",
                "secret": "4866b90750",
                "server": "65535",
                "farm": 66,
                "title": "View of Shutlingsloe from Cat and Fiddle.",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941115196",
                "owner": "188607263@N05",
                "secret": "0a7ba6b9ee",
                "server": "65535",
                "farm": 66,
                "title": "Watermelon Sugar Harry Style signature shirtn",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940597338",
                "owner": "188619306@N04",
                "secret": "3265cfe565",
                "server": "65535",
                "farm": 66,
                "title": "God Designed Me Created Me Blesses Me Girls Defends Forgives Loves Me Shirt",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941412477",
                "owner": "135162570@N03",
                "secret": "e0f4417f02",
                "server": "65535",
                "farm": 66,
                "title": "Kittens - 4 kittens, about 2 months old",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940595558",
                "owner": "188607263@N05",
                "secret": "c66b40959d",
                "server": "65535",
                "farm": 66,
                "title": "Vintage best frenchie dad ever shirtn",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941106521",
                "owner": "188619306@N04",
                "secret": "8de9d138fc",
                "server": "65535",
                "farm": 66,
                "title": "Floral this girl loves her dog shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941406457",
                "owner": "188607263@N05",
                "secret": "a534b32222",
                "server": "65535",
                "farm": 66,
                "title": "The Wire 18th anniversary 2002-2020 5 seasons 60 episodes shirtn",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940586333",
                "owner": "188619306@N04",
                "secret": "a5119ee056",
                "server": "65535",
                "farm": 66,
                "title": "Elect A Clown Expect A Circus Shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940584048",
                "owner": "188607263@N05",
                "secret": "73759b04c5",
                "server": "65535",
                "farm": 66,
                "title": "The coolest pop vintage shirt",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941396062",
                "owner": "188619306@N04",
                "secret": "86caacfe13",
                "server": "65535",
                "farm": 66,
                "title": "Dog Haircuts are overrated life is good 2020 shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941394342",
                "owner": "188607263@N05",
                "secret": "5d2fe57451",
                "server": "65535",
                "farm": 66,
                "title": "Strong Woman Face Mask I Can’t Stay At Home I Work At Firehouse We Fight When Others Can’t shirtn",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941389107",
                "owner": "188619306@N04",
                "secret": "7ce85afe3d",
                "server": "65535",
                "farm": 66,
                "title": "Dallas Cowboys Damn right I am a Cowboys fan now and forever shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941086836",
                "owner": "188607263@N05",
                "secret": "a096ed5fb1",
                "server": "65535",
                "farm": 66,
                "title": "Space Astronaut Weed Stoner Psychedelic Cannabis Marijuana Shirtn",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941383592",
                "owner": "188619306@N04",
                "secret": "3ef931569c",
                "server": "65535",
                "farm": 66,
                "title": "Dad You are my favorite Superhero you are the worlds best dad shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941383322",
                "owner": "188607263@N05",
                "secret": "49244b0d4d",
                "server": "65535",
                "farm": 66,
                "title": "Snoopy And Woodstock Stay Home And Listen To The Beatles shirtn",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941382607",
                "owner": "13129922@N00",
                "secret": "2c528b6aca",
                "server": "65535",
                "farm": 66,
                "title": "Bird watching..",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941075486",
                "owner": "188619306@N04",
                "secret": "54b32f778e",
                "server": "65535",
                "farm": 66,
                "title": "Chicago Cubs Wash Your Damn Hands shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940561058",
                "owner": "188607263@N05",
                "secret": "16d51d4c97",
                "server": "65535",
                "farm": 66,
                "title": "Skull Gentleman’s Dub Club Fuck coronavirus shirtn",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941069116",
                "owner": "188607263@N05",
                "secret": "bc96bfd59b",
                "server": "65535",
                "farm": 66,
                "title": "Sewing And Quilting Love American Flag shirt",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941063246",
                "owner": "188607263@N05",
                "secret": "ee3a09fdf6",
                "server": "65535",
                "farm": 66,
                "title": "Ralphs Covid-19 2020 I Can’t Stay At Home shirtn",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941359882",
                "owner": "188607263@N05",
                "secret": "bdefc1da37",
                "server": "65535",
                "farm": 66,
                "title": "Poker Everything Will Kill You So Choose Something Fun Vintage shirt",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49941057971",
                "owner": "188619306@N04",
                "secret": "ee14a11bea",
                "server": "65535",
                "farm": 66,
                "title": "Bigfoot American Native In The Forest shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            },
            {
                "id": "49940536523",
                "owner": "188619306@N04",
                "secret": "f9a565a517",
                "server": "65535",
                "farm": 66,
                "title": "Best goat mom ever vintage shirtc",
                "ispublic": 1,
                "isfriend": 0,
                "isfamily": 0
            }
        ]
    },
    "stat": "ok"
};
}

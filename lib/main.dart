import 'package:flutter/material.dart';
import 'package:people_list/widgets/people__list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {

  List<Map<String, String>> foydalanuvchilar = [
    {
      "id": "user1",
      "name": "Tom",
      "phone": "123-45-33",
      "photo": "https://www.startfilm.ru/images/base/person/27_04_15/30597_42-25486895.jpg",
    },
    {
      "id": "user2",
      "name": "Tom",
      "phone": "123-45-33",
      "photo": "https://pbs.twimg.com/media/DgEHHrtW0AAxvCv?format=jpg&name=4096x4096",
    },
    {
      "id": "user3",
      "name": "Tom",
      "phone": "123-45-33",
      "photo": "https://cdn.fw-daily.com/2016/05/who-will-be-the-next-james-bond-after-daniel-craig-tom-hardy-909870.jpg",
    },
    {
      "id": "user4",
      "name": "Thomas",
      "phone": "123-45-33",
      "photo": "https://pbs.twimg.com/media/FLfE2CGWQAEIC9N.jpg",
    },
    {
      "id": "user5",
      "name": "Tom",
      "phone": "123-45-33",
      "photo": "https://pbs.twimg.com/media/FS8JYozWUAEUY7f?format=jpg&name=large",
    },
    {
      "id": "user6",
      "name": "Tomas",
      "phone": "123-45-33",
      "photo": "https://static01.nyt.com/images/2015/10/07/fashion/07sangster-A/07sangster-A-superJumbo.jpg",
    },
  ];

  void foydalanuvchiniUchirsh(String foydalanuchiId) {
    setState(() {
      foydalanuvchilar.removeWhere((foydalanuvchi) {
        return foydalanuvchi["id"] == foydalanuchiId;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foydalanuvchilar Royxati',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              itemExtent: 90,
              children: foydalanuvchilar.map((foydalanuvchi){
                return Foydalanuvchilar(
                    id: foydalanuvchi["id"]!,
                    name: foydalanuvchi["name"]!,
                    phone: foydalanuvchi["phone"]!,
                    photo: foydalanuvchi["photo"]!,
                    foydalanuvchiniUchirsh: foydalanuvchiniUchirsh
                );
              }).toList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.search,color: Colors.white,),
      ),
    );
  }
}


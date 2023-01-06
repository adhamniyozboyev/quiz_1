import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget tosh = Column(
    children: [],
  );
  int? val;
  String st = 'first';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('O\'zbekiston 2020 yilda '),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.yellow,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Qaysi viloyat  haqida ma`lumot kerak?',
                  style: TextStyle(fontSize: 25, color: Colors.blue),
                ),
                RadioListTile(
                    title: Text('Toshkent'),
                    value: 1,
                    groupValue: val,
                    onChanged: (v) {
                      setState(() {
                        val = v!;
                      });
                      setState(() {
                        tosh = Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('image/toshkent.jpg'),
                            Text(
                                'U 1938 -yilda tashkil topgan va 15,26 ming kv.km  aholisi 2 931 000')
                          ],
                        );
                      });
                    }),
                RadioListTile(
                    title: Text('Buxoro'),
                    value: 2,
                    groupValue: val,
                    onChanged: (v) {
                      setState(() {
                        val = v!;
                      });
                      setState(() {
                        tosh = Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('image/buxoro.jpg'),
                            Text(
                                'Buxoro viloyati 1938-yil 15- yanvarda tashkil topgan 39 400 kv.km ,aholisi 1 870 200 ')
                          ],
                        );
                      });
                    }),
                RadioListTile(
                    title: Text('Jizzax'),
                    value: 3,
                    groupValue: val,
                    onChanged: (v) {
                      setState(() {
                        val = v!;
                      });
                      setState(() {
                        tosh = Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('image/jizzax.jpg'),
                            Text(
                                'Jizzax 1973-yil 28-dekabrda tashkil etilgan , Aholi: 1 400 000 ,Maydoni: 21200 km²  ')
                          ],
                        );
                      });
                    }),
                RadioListTile(
                    title: Text('Farg`ona'),
                    value: 4,
                    groupValue: val,
                    onChanged: (v) {
                      setState(() {
                        val = v!;
                      });
                      setState(() {
                        tosh = Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('image/fargana.jpg'),
                            Text(
                                'U  1938-yil 15-yanvarda tashkil etilgan ,Maydoni: 6 800 km²,Aholi (2020): 3,817,000')
                          ],
                        );
                      });
                    }),
                RadioListTile(
                    title: Text('Samarqand'),
                    value: 5,
                    groupValue: val,
                    onChanged: (v) {
                      setState(() {
                        val = v!;
                      });
                      setState(() {
                        tosh = Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('image/samarqand.jpg'),
                            Text(
                                'U 1938-yil 15-yanvarda tashkil topgan ,Aholisi 4 077 000 , Maydoni 16,8 ming km.kv')
                          ],
                        );
                      });
                    }),
                RadioListTile(
                    title: Text('Namangan'),
                    value: 6,
                    groupValue: val,
                    onChanged: (v) {
                      setState(() {
                        val = v!;
                      });
                      setState(() {
                        tosh = Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('image/namangan.jpg'),
                            Text(
                                'U  1941-yil 11-martda tashkil etilgan,Maydoni: 7900 km²,Aholi : 2 931 045')
                          ],
                        );
                      });
                    }),
              ],
            ),
            Text("Ma'lumot bu yerda⬇⬇⬇ ",style: TextStyle(fontSize: 20,color: Colors.deepOrange),),
            Container(
              color: Colors.white,
              height: 300,
              width: 370,
              child: tosh,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
          bodyLarge: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
          bodyMedium: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
          titleSmall: TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
        )),
        debugShowCheckedModeBanner: false,
        home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      appBar: AppBar(
        actions: [
          SizedBox(width: 10),
          Icon(
            Icons.menu,
            size: 30,
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 0, 200, 0)),
          Text(
            "قیمت به روز ارز",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Expanded(
              child: Icon(
            Icons.monetization_on_outlined,
            size: 30,
          )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "نرخ ارز آزاد چیست ؟",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Icon(Icons.question_mark),
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 8, 0, 0)),
            Text(
              "نرخ ارز ها در معاملات روزانه رایج است . معاملات نقدی معاملاتی  هستند که خریدار و فروشنده به محض انجام معامله ارز و ریال را باهم تبادل میکنند",
              style: Theme.of(context).textTheme.bodyMedium,
              textDirection: TextDirection.rtl,
            ),
            // body heead container
            Padding(
              padding: EdgeInsets.fromLTRB(25, 25, 0, 0),
              child: Container(
                height: 35,
                width: 350,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 130, 130, 130),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("تغییر",
                        style: Theme.of(context).textTheme.titleSmall),
                    Text("قیمت", style: Theme.of(context).textTheme.titleSmall),
                    Text("نام آزاد ارز",
                        style: Theme.of(context).textTheme.titleSmall),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

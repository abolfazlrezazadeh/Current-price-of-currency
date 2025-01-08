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
          bodySmall: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          titleSmall: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
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
              "نرخ ارز ها در معاملات روزانه رایج است .\n معاملات نقدی معاملاتی  هستند که خریدار و فروشنده به محض انجام معامله ارز و ریال را باهم تبادل میکنند.",
              style: Theme.of(context).textTheme.bodyMedium,
              textDirection: TextDirection.rtl,
            ),

            // body heead container
            Padding(
              padding: EdgeInsets.fromLTRB(25, 24, 0, 0),
              child: Container(
                height: 35,
                width: double.infinity,
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
            ),
            // list
            Container(
                width: double.infinity,
                // MediaQuery.of(context).size.height ==> height of screen
                // 0.5 ==> 50% of screen
                height: MediaQuery.of(context).size.height *0.5 ,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(blurRadius: 1.0, color: Colors.grey)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(1000) 
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //name of money
                            Text("دلار",style: Theme.of(context).textTheme.bodySmall,),
                            // price
                            Text("85000",style: Theme.of(context).textTheme.bodySmall,),
                            // changes
                            Text("+3",style: Theme.of(context).textTheme.bodySmall,),
                          ],
                        ),
                      ),
                    );
                  }),
                ))
          ],
        ),
      ),
    );
  }
}

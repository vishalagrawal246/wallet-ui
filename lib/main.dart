import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Wallet'),
          backgroundColor: Colors.green,
        ),
        //backgroundColor: Color(0xfff4f1f1),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Card(
                  color: const Color(0xFF4CAF50),
                  elevation: 20,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const SweepGradient(
                        startAngle: 3.14 * 0.1,
                        endAngle: 3.14 * 1.7,
                        colors: [
                          Colors.green,
                          Colors.lightGreen,
                          Colors.greenAccent,
                          Colors.yellow,
                          Colors.green,
                        ],
                        stops: <double>[0.0, 1.0, 0.5, 0.0, 0.0],
                        tileMode: TileMode.clamp,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Current Balance",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              const Text(
                                "\$999",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                'assets/pattern.png',
                                height: 200,
                                color: Colors.black54,
                              ),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image.asset(
                                  'assets/wallet.png',
                                  height: 50,
                                  color: Colors.black87,
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Image.asset(
                                  'assets/vishuapps.png',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Text(
                        "Topup Wallet",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: TextFormField(
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.attach_money,
                          color: Colors.black,
                        ),
                        errorStyle: const TextStyle(color: Colors.red),
                        contentPadding: const EdgeInsets.all(15),
                        hintText: "Enter amount",
                        hintStyle: const TextStyle(
                            fontSize: 16.0, color: Colors.black),
                        filled: true,
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          plusBtns(10),
                          plusBtns(20),
                          plusBtns(50),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 40.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        onPressed: () {},
                        color: Colors.green,
                        textColor: Colors.yellow,
                        splashColor: Colors.white,
                        child: const Text(
                          "Proceed",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InkWell(
                        child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.lightGreenAccent,
                            ),
                            height: MediaQuery.of(context).size.height * .080,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(
                                    Icons.history,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    'Wallet Transaction History',
                                    style: TextStyle(
                                      fontSize: 16,
                                      letterSpacing: 1,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            )),
                        onTap: () {}),
                  )
                ],
              ),
            ]),
          ),
        ));
  }

  Widget plusBtns(int num) {
    return InkWell(
        child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.lightGreenAccent, width: 2),
              //color: Colors.lightGreenAccent,
            ),
            height: MediaQuery.of(context).size.height * .060,
            width: MediaQuery.of(context).size.width * .24,
            child: Center(
                child: Text(
              '+$num',
              style: const TextStyle(
                fontSize: 16,
                letterSpacing: 1,
                color: Colors.black,
              ),
            ))),
        onTap: () {});
  }
}

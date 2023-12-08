import 'package:flutter/material.dart';

void main() {
  runApp(const LinkAjaApp());
}

class LinkAjaApp extends StatelessWidget {
  const LinkAjaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'LinkAja!',
            style: TextStyle(color: Color.fromARGB(255, 203, 14, 0)),
          ),
        ),
        body: LinkAjaHome(),
      ),
    );
  }
}

class LinkAjaHome extends StatelessWidget {
  const LinkAjaHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container1(),
          // Container2(),
          // Container3(),
        ],
      ),
    );
  }

  Container Container3() {
    return Container(
      color: const Color.fromARGB(255, 222, 221, 221),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20),
          Row(
            children: [
              Card(
                margin: const EdgeInsets.all(
                    16.0), // Hapus Expanded yang tidak diperlukan
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text('Pulsa/Data'),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(
                    16.0), // Hapus Expanded yang tidak diperlukan
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.flash_on),
                        title: Text('Electricity'),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(
                    16.0), // Hapus Expanded yang tidak diperlukan
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.receipt_long_outlined),
                        title: Text('BPJS'),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(
                    16.0), // Hapus Expanded yang tidak diperlukan
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.games),
                        title: Text('mgames'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container Container2() {
    return Container(
      color: Color.fromARGB(255, 222, 221, 221),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20),
          Row(
            children: [
              Card(
                margin: const EdgeInsets.all(
                    16.0), // Hapus Expanded yang tidak diperlukan
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.receipt),
                        title: Text('TopUp'),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(
                    16.0), // Hapus Expanded yang tidak diperlukan
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.money),
                        title: Text('Send Money'),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(
                    16.0), // Hapus Expanded yang tidak diperlukan
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.airplane_ticket),
                        title: Text('Ticket Code'),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(
                    16.0), // Hapus Expanded yang tidak diperlukan
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.square),
                        title: Text('See All'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container Container1() {
    return Container(
      color: const Color.fromARGB(255, 203, 14, 0),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hi, SOFYAN NOOR ARIEF, S.ST, M.KOM',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const Padding(padding: EdgeInsets.all(20)),
          Row(
            children: [
              Card(
                margin: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.white,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Icon(Icons.account_balance_wallet),
                              Text('Your Balance'),
                              Text('Rp 0'),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(right: 20)),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Card(
              //   margin: const EdgeInsets.all(16.0),
              //   child: InkWell(
              //     onTap: () {},
              //     splashColor: Colors.white,
              //     child: Column(
              //       mainAxisSize: MainAxisSize.min,
              //       children: <Widget>[
              //         Icon(Icons.arrow_forward),
              //         ListTile(
              //           title: Text('Bonus Balance'),
              //           subtitle: Text('0'),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}

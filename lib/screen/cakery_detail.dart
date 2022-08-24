import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roti_app/widget/navbar_widget.dart';

class CakeryDetail extends StatelessWidget {

  final String assetPath;
  final String cookieprice;
  final String cookiename;

  const CakeryDetail({
    Key?key,
    required this.assetPath,
    required this.cookieprice,
    required this.cookiename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff545d68),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Pilihan",
          style: TextStyle(
            fontFamily: "Varela",
            fontSize: 20,
            color: Color(0xff545D68)
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.notifications_none),
            color: Color(0xff545D68),)
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 15),
          Padding(padding: EdgeInsets.only(left:20),
            child: Text("Kue",
            style: TextStyle(
              fontFamily: "Varela",
              fontSize: 42,
              fontWeight: FontWeight.bold,
              color: Color(0xff17532)
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
          Hero(
            tag: assetPath, 
            child: Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(fit: BoxFit.cover,image: AssetImage(assetPath))
              ),
            ),
          ),
          SizedBox(height:20),
          Center(
            child: Text(
              "Rp. $cookieprice",
              style: TextStyle(
                fontFamily: "Varela",
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff175332)
              ),
            ),
          ),
          SizedBox(height:20),
          Center(
            child: Text(
              cookiename,
              style: TextStyle(
                fontFamily: "Varela",
                fontSize: 24,
                color: Color(0xff575e67)
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 50.0,
              child: const Text(
                'Bolu atau kue bolu adalah kue berbahan dasar tepung, gula, dan telur. Kue bolu dan cake umumnya dimatangkan dengan cara dipanggang di dalam oven, walaupun ada juga bolu yang dikukus',
                maxLines: 4,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 16.0,
                  color: Color(0xFFB4B8B9),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 100,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xfff17532),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.whatsapp,
                      size: 30,
                      color: Colors.white70,
                    ),
                    SizedBox(width: 10),
                    Text("Pesan via Whatsapp",
                      style: TextStyle(
                        fontFamily: "Varela",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xfff17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
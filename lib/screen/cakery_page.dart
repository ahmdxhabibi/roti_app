import 'package:flutter/material.dart';
import 'package:roti_app/data/cake.dart';
import 'package:roti_app/screen/cakery_detail.dart';

class CakeryPage extends StatelessWidget {
  const CakeryPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFAF8),
      body: ListView(
        children: [
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.only(right: 15),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return _buildCard(listCakes[index], context);
              },
              itemCount: listCakes.length,
            ),
          ),
          SizedBox(height: 15,)
        ],
      ),
    );
  }
  Widget _buildCard(
    Cake cake, context,
  ) {
    return Padding(padding: EdgeInsets.all(5),
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return CakeryDetail(
              assetPath: cake.imageUrl,
              cookieprice: cake.price,
              cookiename: cake.name,
            );
          }));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 5,
            )
          ],
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                cake.isFavorite ? Icon(Icons.favorite, color: Color(0xffEF7532),) : 
                                  Icon(Icons.favorite_border, color: Color(0xffEF7532),)
              ],
            ),
            Hero(
              tag: cake.imageUrl,
              child: Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(cake.imageUrl),
                    fit: BoxFit.contain)
                ),
              ),
            ),
            SizedBox(height: 7),
            Text("Rp ${cake.price}",
              style: TextStyle(
                color: Color(0xffCC8053),
                fontFamily: 'Varela',
                fontSize: 14
              ),
            ),
            Text(cake.name,
              style: TextStyle(
                color: Color(0xff575e67),
                fontFamily: 'Varela',
                fontSize: 14
              ),
            ),
            Padding(padding: EdgeInsets.all(8),
            child: Container(color: Color(0xffEBEBEB), height: 1,),),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(children: [
                    Icon(
                      Icons.shopping_basket, 
                      color: Color(0xffD17E50), 
                      size: 16),
                    SizedBox(width: 6,),
                    Text("Beli",
                      style: TextStyle(
                        fontFamily: "Varela",
                        color: Color(0xffD17E50),
                        fontSize: 12,
                      ),)
                  ],),
                SizedBox(width: 15,),
                Row(
                  children: [
                    Icon(
                      Icons.remove_circle_outline,
                      color: Color(0xffD17E50),
                      size: 16,),
                    SizedBox(width: 6,),
                    Text("3", style: TextStyle(
                      fontFamily: "Varela",
                      color: Color(0xffD17E50),
                      fontWeight: FontWeight.bold,
                      fontSize: 12),),
                    SizedBox(width: 6),
                    Icon(
                      Icons.add_circle_outline,
                      color: Color(0xffD17E50),
                      size: 16)
                    ],
                  )
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
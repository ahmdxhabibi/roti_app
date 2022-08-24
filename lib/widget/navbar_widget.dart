import 'package:flutter/material.dart';
class NavbarWidget extends StatelessWidget {
  const NavbarWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      clipBehavior: Clip.antiAlias,
      shape: CircularNotchedRectangle(),
      notchMargin: 8,
      color: Colors.transparent,
      elevation: 10,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 50,
            width: MediaQuery.of(context).size.width / 2 - 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home, color: Color(0xFFEF7532),),
                Icon(Icons.search, color: Color(0xFFEF7532),),
              ]
            ),),
            SizedBox(height: 50,
            width: MediaQuery.of(context).size.width / 2 - 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.shopping_basket_outlined, color: Color(0xFFEF7532),),
                Icon(Icons.person_outline, color: Color(0xFFEF7532),),
              ]
            ),),
          ],
        ),
      ),
    );
  }
}
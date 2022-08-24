import 'package:flutter/material.dart';
import 'package:roti_app/screen/cakery_page.dart';
import 'package:roti_app/widget/navbar_widget.dart';
class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

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
            color: Color(0xFF545D68),
          ),
          onPressed: () {},
        ),
        title: Text("Enaque Cakery",
        style: TextStyle(
          fontFamily: 'Varela',
          fontSize: 20,
          color: Color(0xFF545D68)
        ),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none, color: Color(0xff545d68),))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20),
        children: [
          SizedBox(height: 15,),
          Text("Menu",
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 42,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 15,),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Color(0xffC88D67),
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 25),
            unselectedLabelColor: Color(0xffCDCDCD),
            tabs: const[
              Tab(
                child: Text("Cake Box",
                  style: TextStyle(
                    fontFamily: "Varela",
                    fontSize: 21,
                  ),
                ),
              ),
              Tab(
                child: Text("Cake Slice",
                  style: TextStyle(
                    fontFamily: "Varela",
                    fontSize: 21,
                  ),
                ),
              ),
              Tab(
                child: Text("Chiffron",
                  style: TextStyle(
                    fontFamily: "Varela",
                    fontSize: 21,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
                height: MediaQuery.of(context).size.height - 50,
                width: double.infinity,
                child: TabBarView(
                  controller: _tabController,
                  children: const[
                    CakeryPage(),
                    CakeryPage(),
                    CakeryPage(),
                  ]
                ),
              )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFEF7532),
        child: Icon(Icons.fastfood),
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
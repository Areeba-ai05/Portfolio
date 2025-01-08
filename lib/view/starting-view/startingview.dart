import 'package:flutter/material.dart';
import 'package:portfoliowebsite/controller/contants/app-colors/app-colors.dart';
import 'package:portfoliowebsite/controller/widgets/firsttextwidget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.brown),//for chaning background color
              currentAccountPicture: CircleAvatar(),
              accountName: Text('Areeba Iqbal'),
              accountEmail: Text('areeba.seo05@gmail.com'),),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeView()));// for page nav
              },
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.zincColor,
        title: Text('software_sprinkles',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
        actions: [
          TextButton(onPressed: () {}, child: Text('Home',style: TextStyle(fontSize: 18))),
          TextButton(onPressed: () {}, child: Text('About',style: TextStyle(fontSize: 18))),
          TextButton(onPressed: () {}, child: Text('Skills',style: TextStyle(fontSize: 18))),
          TextButton(onPressed: () {}, child: Text('Projects',style: TextStyle(fontSize: 18))),
          TextButton(onPressed: () {}, child: Text('Contact',style: TextStyle(fontSize: 18))),
        ],
      ),
      body: Column(
        children: [
          Divider(
            color: Colors.grey,
            thickness: 2,
          ),
         Container(
           height: 616,
           width: 1140,
           decoration: BoxDecoration(
             color: AppColors.primaryColor
           ),
           child: Row(
             children: [
               NormalTextWidget(text: 'Hi Everone,I am', textColor: AppColors.primaryColor2),
             ],
           ),

         )
        ],
      ),
    );
  }
}

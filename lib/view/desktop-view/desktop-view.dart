import 'package:flutter/material.dart';
import 'package:portfoliowebsite/controller/contants/app-colors/app-colors.dart';
import 'package:portfoliowebsite/controller/widgets/Blackrext-hrading.dart';
import 'package:portfoliowebsite/controller/widgets/NormalTextWidget.dart';
import 'package:portfoliowebsite/controller/widgets/secondTextWidget.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.brown), // Change background color
              currentAccountPicture: CircleAvatar(),
              accountName: Text('Areeba Iqbal'),
              accountEmail: Text('areeba.seo05@gmail.com'),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DesktopView()),
                ); // Page navigation
              },
              leading: Icon(Icons.settings),
              title: Text('About'),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text('Skills'),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text('Projects'),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.call),
              title: Text('Contact'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.bacckgroundColor,
        title: Text(
          'software_sprinkles',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
        ),
        actions: [
          TextButton(
              onPressed: () {}, child: Text('Home', style: TextStyle(fontSize: 18,color: Colors.black))),
          TextButton(
              onPressed: () {}, child: Text('About', style: TextStyle(fontSize: 18,color: Colors.black))),
          TextButton(
              onPressed: () {}, child: Text('Skills', style: TextStyle(fontSize: 18,color: Colors.black))),
          TextButton(
              onPressed: () {}, child: Text('Projects', style: TextStyle(fontSize: 18,color: Colors.black))),
          TextButton(
              onPressed: () {}, child: Text('Contact', style: TextStyle(fontSize: 18,color: Colors.black))),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(2),
          child: Divider(
            color: Colors.grey,
            thickness: 2,
            height: 2,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.5,
              width: width,
              decoration: BoxDecoration(
                color: AppColors.bacckgroundColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 100.0, top:30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NormalTextWidget(
                      text: 'Hi Everyone, I am',
                      textColor: AppColors.backgroundColor,
                    ),
                    SizedBox(height: 2), // Adjust spacing between the texts
                    BlackTextHeading(text: 'Areeba Iqbal'),
                    SizedBox(height: 5,),
                    SecondTextWidget(text: ' a passionate Android developer with expertise in Flutter and Dart.', textColor: AppColors.lightblackColor),
                    SizedBox(height: 5,),
                    SecondTextWidget(text: 'I create sleek, user-friendly apps that solve real-world problems.', textColor:AppColors.lightblackColor)
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

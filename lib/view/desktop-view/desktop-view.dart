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
              decoration: BoxDecoration(color: Colors.brown),
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
                );
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
              onPressed: () {}, child: Text('Home', style: TextStyle(fontSize: 18, color: Colors.black))),
          TextButton(
              onPressed: () {}, child: Text('About', style: TextStyle(fontSize: 18, color: Colors.black))),
          TextButton(
              onPressed: () {}, child: Text('Skills', style: TextStyle(fontSize: 18, color: Colors.black))),
          TextButton(
              onPressed: () {}, child: Text('Projects', style: TextStyle(fontSize: 18, color: Colors.black))),
          TextButton(
              onPressed: () {}, child: Text('Contact', style: TextStyle(fontSize: 18, color: Colors.black))),
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
              width: width * 1.0,
              decoration: BoxDecoration(
                color: AppColors.bacckgroundColor,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0, top: 90),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        NormalTextWidget(
                          text: 'Hi Everyone, I am',
                          textColor: AppColors.backgroundColor,
                        ),
                        SizedBox(height: 2),
                        BlackTextHeading(text: 'Areeba Iqbal'),
                        SizedBox(height: 5),
                        SecondTextWidget(
                          text:
                          ' a passionate Android developer with expertise in Flutter and Dart.',
                          textColor: AppColors.lightblackColor,
                        ),
                        SizedBox(height: 7),
                        SecondTextWidget(
                          text:
                          'I create sleek, user-friendly apps that solve real-world problems.',
                          textColor: AppColors.lightblackColor,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    //top: height* 0.9,//Adjust this value for vertical alignment
                     top:50,
                    right: 170,
                    bottom: 100,// Adjust horizontal alignment
                    child: Container(
                      height: 720,
                      width: 250,
                      decoration: BoxDecoration(color: AppColors.tealColor,
                      //border:Border(),
                      borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage('assets/App-images/homeimg.jpg'),
                        fit: BoxFit.cover
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: height * 0.5,
              width: width * 1.0,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
            color: Colors.black,
            thickness: 2,
            height: 2,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.9,
              width: width * 1.0,
              decoration: BoxDecoration(
                color: AppColors.bacckgroundColor,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 120.0, top: 300),
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
                     top:120,
                    right: 170,
                    bottom: 90,// Adjust horizontal alignment
                    child: Container(
                      height: 500,
                      width: 420,
                      decoration: BoxDecoration(color: AppColors.tealColor,
                      //border:Border(),
                      borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage('assets/App-images/homeimg.jpg'),
                        fit: BoxFit.cover)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: height * 0.9,
              width: width * 1.0, // Adjusted width for proper scaling
              decoration: BoxDecoration(
                color: AppColors.pcolor2//primaryColor,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 90.0, top: 160),
                    child: Container(
                      height: 340,
                      width: 450,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('assets/App-images/img1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 180, // Align the text with the image container
                    left: 670,
                    right: 30,// Positioned to the right of the image container
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        NormalTextWidget(
                          text: 'About',
                          textColor: AppColors.backgroundColor,
                        ),
                        SizedBox(height: 2),
                        BlackTextHeading(text: 'About Me?'),
                        SizedBox(height: 5),
                        SecondTextWidget(
                          text:
                          ' A passionate Android developer with expertise in Flutter and Dart.',
                          textColor: AppColors.lightblackColor,
                        ),
                        SecondTextWidget(
                          text:
                          'Crafting seamless mobile experiences is my passion!   ',
                          textColor: AppColors.lightblackColor,
                        ),
                        SecondTextWidget(
                          text:
                          'As an Android developer skilled in Flutter and Dart,',
                          textColor: AppColors.lightblackColor,
                        ),
                        SecondTextWidget(
                          text:
                          ' I turn ideas into sleek, high-performing apps. From intuitive UIs to scalable solutions,',
                          textColor: AppColors.lightblackColor,
                        ),
                        SecondTextWidget(
                          text:
                          'I bring innovation to every project. Check out my work to see the difference!',
                          textColor: AppColors.lightblackColor,
                        ),
                        SecondTextWidget(
                          text:
                          'Whether it’s building a complex layout like a Facebook clone or debugging intricate issues,',
                          textColor: AppColors.lightblackColor,
                        ),
                        SecondTextWidget(
                          text:
                          ' I thrive on solving challenges and delivering quality results.',
                          textColor: AppColors.lightblackColor,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
        Container(
          height: height * 0.9,
          width: width * 1.0, // Adjusted width for proper scaling
          decoration: BoxDecoration(
            color: AppColors.bacckgroundColor,
          ),
          child: Column(
            children:[
              Padding(
                padding: const EdgeInsets.only(top: 68.0),
                child: NormalTextWidget(text: 'My Skills', textColor:AppColors.backgroundColor),
              ),
              SizedBox(height: 02,),
              BlackTextHeading(text: 'What I am capable of?'),
              Padding(
                padding: const EdgeInsets.only(left:50.0,top: 70),
                child: Row(
                  children: [
                    Container(
                      height: 300 ,
                      width: 300,
                      decoration: BoxDecoration(
                        color: AppColors.pcolor2,
                        borderRadius: BorderRadius.circular(10.67),
                      ),
                      child: Column(

                      ),
                    ),
                    SizedBox(width:10),
                    Container(
                      height: 300 ,
                      width: 300,
                      decoration: BoxDecoration(
                        color: AppColors.pcolor2,
                        borderRadius: BorderRadius.circular(10.67),
                      ),
                      child: Column(

                      ),
                    ),
                    SizedBox(width:10),
                    Container(
                      height: 300 ,
                      width: 300,
                      decoration: BoxDecoration(
                        color: AppColors.pcolor2,
                        borderRadius: BorderRadius.circular(10.67),
                      ),
                      child: Column(

                      ),
                    ),
                    SizedBox(width:10),
                    Container(
                      height: 300 ,
                      width: 300,
                      decoration: BoxDecoration(
                        color: AppColors.pcolor2,
                        borderRadius: BorderRadius.circular(10.67),
                      ),
                      child: Column(

                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
          ],
        ),
      ),
    );
  }
}

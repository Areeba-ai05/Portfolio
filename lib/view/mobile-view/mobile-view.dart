import 'package:flutter/material.dart';
import 'package:portfoliowebsite/controller/widgets/Blackrext-hrading.dart';
import 'package:portfoliowebsite/controller/widgets/NormalTextWidget.dart';
import 'package:portfoliowebsite/controller/widgets/secondTextWidget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../controller/contants/app-colors/app-colors.dart';

class HomeViewMobile extends StatefulWidget {
  const HomeViewMobile({super.key});

  @override
  State<HomeViewMobile> createState() => _HomeViewMobileState();
}

class _HomeViewMobileState extends State<HomeViewMobile> {
  @override
  Widget build(BuildContext context) {
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
                //Navigator.push(
                  //context,
                 // MaterialPageRoute(builder: (context) => DesktopView()),
               // );
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
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.1, // Adjust for mobile
                      top: MediaQuery.of(context).size.height * 0.3, // Adjust for mobile
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        NormalTextWidget(
                          text: 'Hi Everyone, I am',
                          textColor: AppColors.backgroundColor,
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                        BlackTextHeading(text: 'Areeba Iqbal'),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                        SecondTextWidget(
                          text: 'A passionate Android developer with expertise in Flutter and Dart.',
                          textColor: AppColors.lightblackColor,
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                        SecondTextWidget(
                          text: 'I create sleek, user-friendly apps that solve real-world problems.',
                          textColor: AppColors.lightblackColor,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.2, // Adjust vertical position
                    right: MediaQuery.of(context).size.width * 0.1, // Adjust horizontal position
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                        color: AppColors.tealColor,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('assets/App-images/homeimg.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05, // Adjust for mobile
                      top: MediaQuery.of(context).size.height * 0.2, // Adjust for mobile
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.8,
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
                    top: MediaQuery.of(context).size.height * 0.2, // Align with image
                    left: MediaQuery.of(context).size.width * 0.1, // Adjust for mobile
                    right: MediaQuery.of(context).size.width * 0.05, // Adjust for mobile
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        NormalTextWidget(
                          text: 'About',
                          textColor: AppColors.backgroundColor,
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                        BlackTextHeading(text: 'About Me?'),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                        SecondTextWidget(
                          text: 'A passionate Android developer with expertise in Flutter and Dart.',
                          textColor: AppColors.lightblackColor,
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                        SecondTextWidget(
                          text: 'Crafting seamless mobile experiences is my passion!',
                          textColor: AppColors.lightblackColor,
                        ),
                        SecondTextWidget(
                          text: 'As an Android developer skilled in Flutter and Dart,',
                          textColor: AppColors.lightblackColor,
                        ),
                        SecondTextWidget(
                          text: 'I turn ideas into sleek, high-performing apps.',
                          textColor: AppColors.lightblackColor,
                        ),
                        SecondTextWidget(
                          text: 'Whether it’s building complex layouts or solving challenges,',
                          textColor: AppColors.lightblackColor,
                        ),
                        SecondTextWidget(
                          text: 'I thrive on delivering quality results.',
                          textColor: AppColors.lightblackColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

      

      Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width, // Full width
        decoration: BoxDecoration(
          color: AppColors.bacckgroundColor,
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.1, // 10% of screen width
            top: MediaQuery.of(context).size.height * 0.06, // 6% of screen height
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              NormalTextWidget(
                text: 'Contacts',
                textColor: AppColors.backgroundColor,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01, // Spacing scaled to screen height
              ),
              BlackTextHeading(text: 'Get in touch'),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01, // Spacing scaled to screen height
              ),
              SecondTextWidget(
                text: 'areeba.seo05@gmail.com',
                textColor: AppColors.blackColor,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03, // Spacing for better layout
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () async {
                      final linkedInurl = 'https://www.linkedin.com/in/areeba-iqbal-0888b2341';
                      await launchUrl(Uri.parse(linkedInurl));
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02, // Horizontal padding for spacing
                      ),
                      child: Image.asset(
                        'assets/App-images/Linked.png',
                        height: MediaQuery.of(context).size.height * 0.05, // Scale icon size
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      final giturl = 'https://github.com/Areeba-ai05';
                      await launchUrl(Uri.parse(giturl));
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02, // Horizontal padding for spacing
                      ),
                      child: Image.asset(
                        'assets/App-images/Git.png',
                        height: MediaQuery.of(context).size.height * 0.05, // Scale icon size
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      final instaurl = ''; // Add valid Instagram URL here
                      await launchUrl(Uri.parse(instaurl));
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02, // Horizontal padding for spacing
                      ),
                      child: Image.asset(
                        'assets/App-images/Insta.png',
                        height: MediaQuery.of(context).size.height * 0.05, // Scale icon size
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                    ),
                  ),
                ],
              ),
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

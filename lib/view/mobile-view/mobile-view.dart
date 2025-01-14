import 'package:flutter/material.dart';
import 'package:portfoliowebsite/controller/widgets/Blackrext-hrading.dart';
import 'package:portfoliowebsite/controller/widgets/NormalTextWidget.dart';
import 'package:portfoliowebsite/controller/widgets/secondTextWidget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../controller/contants/app-colors/app-colors.dart';

class HomeViewMobile extends StatefulWidget {

   HomeViewMobile({super.key, });

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
              decoration: BoxDecoration(color: AppColors.bacckgroundColor),
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
    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
    ),
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
                color: AppColors.bacckgroundColor,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05, // Adjust for mobile
                      top: MediaQuery.of(context).size.height * 0.25, // Adjust for mobile
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
                        SizedBox(height: 280),
                        Container(
                            height: 44,
                            width:190,
                            decoration: BoxDecoration(
                              color:AppColors.backgroundColor,
                            ),
                            child: TextButton(onPressed: (){}, child: NormalTextWidget(text: 'Contact', textColor: AppColors.whiteColor)))
                      ],
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.43, // Adjust vertical position
                    right: MediaQuery.of(context).size.width * 0.05, // Adjust horizontal position
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.9,
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
              width: MediaQuery.of(context).size.width, // Full width
              decoration: BoxDecoration(
                color: AppColors.whiteColor, // Primary color
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18, top:  72,
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.3,
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
                    top: MediaQuery.of(context).size.height * 0.43, // Adjusted position
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.1, // Align within screen width
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NormalTextWidget(
                          text: 'About',
                          textColor: AppColors.backgroundColor,
                        ),
                        SizedBox(height:03),
                        BlackTextHeading(text: 'About Me?'),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                        SecondTextWidget(
                          text: ' A creative Android developer with a passion for building innovative mobile applications.',
                          textColor: AppColors.lightblackColor,
                        ),
                        SecondTextWidget(
                          text: 'With expertise in Flutter and Dart, I specialize in crafting dynamic, high-performance apps that deliver sleek and seamless user experiences.',
                          textColor: AppColors.lightblackColor,
                        ),
                        SecondTextWidget(
                          text: 'I’ve also mastered the basics of Firebase, integrating real-time databases, authentication, and cloud storage seamlessly into apps."',
                          textColor: AppColors.lightblackColor,
                        ),
                        SecondTextWidget(text: 'Whether it’s designing intuitive UIs, optimizing performance, or implementing cutting-edge features, ',
                          textColor: AppColors.lightblackColor,
                        ),
                        SecondTextWidget(text: 'I thrive on turning ideas into functional, impactful solutions.',
                          textColor: AppColors.lightblackColor,
                        ),
                        SecondTextWidget(
                          text: 'I’m always exploring the latest technologies and trends in mobile development to stay ahead of the curve.',
                          textColor: AppColors.lightblackColor,
                        ),
                        SecondTextWidget(
                          text: 'Always curious and eager to learn, I stay updated with the latest trends in mobile development to deliver forward-thinking apps.',
                          textColor: AppColors.lightblackColor,
                        ),
                        SecondTextWidget(
                          text: 'Let’s build something extraordinary together—take a look at my projects to see how I bring ideas to life!', textColor: AppColors.lightblackColor,
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
                      final instaurl = 'https://www.instagram.com/software_sprinkles/'; // Add valid Instagram URL here
                      await launchUrl(Uri.parse(instaurl));
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02, // Horizontal padding for spacing
                      ),
                      child: Image.asset(
                        'assets/App-images/Insta.png',
                        height: MediaQuery.of(context).size.height * 0.05, // Scale icon size
                        width: MediaQuery.of(context).size.width * 0.1,),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 120),
              SecondTextWidget(text: 'Copyright 2025.Develop & Design by Areeba Iqbal ', textColor: AppColors.blackColor),
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



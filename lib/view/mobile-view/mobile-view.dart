import 'package:flutter/material.dart';
import 'package:portfoliowebsite/controller/widgets/Blackrext-hrading.dart';
import 'package:portfoliowebsite/controller/widgets/DescriptionTextWidget.dart';
import 'package:portfoliowebsite/controller/widgets/NormalTextWidget.dart';
import 'package:portfoliowebsite/controller/widgets/secondTextWidget.dart';
import 'package:portfoliowebsite/controller/widgets/secondTextWiget2.dart';
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
                    padding: EdgeInsets.only(left: 18, top:  52,
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.9,
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
                    top: MediaQuery.of(context).size.height * 0.4, // Adjusted position
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.1, // Align within screen width
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NormalTextWidget(
                          text: 'About',
                          textColor: AppColors.backgroundColor,
                        ),
                        SizedBox(height:0.5),
                        BlackTextHeading(text: 'About Me?'),
                        SizedBox(height:1),
                        SecondText_Widget(
                          text: ' A creative Android developer with a passion for building innovative mobile applications.',
                          textColor: AppColors.lightblackColor,
                        ),
                        SizedBox(height:1),
                        SecondText_Widget(
                          text: 'With expertise in Flutter and Dart, I specialize in crafting dynamic, high-performance apps that deliver sleek and seamless user experiences.',
                          textColor: AppColors.lightblackColor,
                        ),
                        SizedBox(height:1),
                        SecondText_Widget(
                          text: 'I’ve also mastered the basics of Firebase, integrating real-time databases, authentication, and cloud storage seamlessly into apps."',
                          textColor: AppColors.lightblackColor,
                        ),
                        SizedBox(height:1),
                        SecondText_Widget(text: 'Whether it’s designing intuitive UIs, optimizing performance, or implementing cutting-edge features, ',
                          textColor: AppColors.lightblackColor,
                        ),
                        SizedBox(height:1),
                        SecondText_Widget(text: 'I thrive on turning ideas into functional, impactful solutions.',
                          textColor: AppColors.lightblackColor,
                        ),
                        SizedBox(height:1),
                        SecondText_Widget(
                          text: 'I’m always exploring the latest technologies and trends in mobile development to stay ahead of the curve.',
                          textColor: AppColors.lightblackColor,
                        ),
                        SizedBox(height:1),
                        SecondText_Widget(
                          text: 'Always curious and eager to learn, I stay updated with the latest trends in mobile development to deliver forward-thinking apps.',
                          textColor: AppColors.lightblackColor,
                        ),
                        SizedBox(height:1),
                        SecondText_Widget(
                          text: 'Let’s build something extraordinary together—take a look at my projects to see how I bring ideas to life!', textColor: AppColors.lightblackColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width, // Adjusted width for proper scaling
              decoration: BoxDecoration(
                color: AppColors.bacckgroundColor,
              ),
              child: Column(
                children:[
                  Padding(
                    padding: const EdgeInsets.only(left:40,top: 28.0),
                    child: NormalTextWidget(text: 'My Skills', textColor:AppColors.backgroundColor),
                  ),
                  SizedBox(height: 02,),
                  BlackTextHeading(text: 'What I am capable of?'),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0,top: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Row(
                        children: [
                          Container(
                            height: 230 ,
                            width: 300,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(10.67),
                            ),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Container(
                                    height:70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.67),
                                      color:AppColors.bacckgroundColor,
                                      image: DecorationImage(
                                        image: AssetImage('assets/App-images/dartlogo2.png',),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height:5),
                                BlackTextHeading(text: 'Dart Programming'),
                                SizedBox(height:8),
                                DescriptionTextWidget(text: 'I specialize in Dart, a powerful language for modern app development', textColor: AppColors.lightblackColor),
                                SizedBox(height:8),
                                DescriptionTextWidget(text: 'Dart allows me to write clean, efficient code for high-performance apps.', textColor: AppColors.lightblackColor),
                                SizedBox(height:8),
                                DescriptionTextWidget(text: 'Whether for mobile, web, or desktop, I create seamless, reliable solutions.', textColor: AppColors.lightblackColor),
                                SizedBox(height:8),
                                DescriptionTextWidget(text: 'Its strong integration with Flutter ensures smooth cross-platform development.', textColor: AppColors.lightblackColor)
                              ],
                            ),
                          ),
                          SizedBox(width:50),
                          Container(
                            height: 250 ,
                            width: 300,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(10.67),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:5.0),
                                  child: Container(
                                    height:80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.67),
                                      color:AppColors.bacckgroundColor,
                                      image: DecorationImage(
                                        image: AssetImage('assets/App-images/flutter2.png',),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height:5),
                                BlackTextHeading(text: 'Flutter'),
                                SizedBox(height:8),
                                DescriptionTextWidget(text:'Flutter is a powerful toolkit for creating stunning, natively compiled apps.',textColor: AppColors.lightblackColor),
                                SizedBox(height:8),
                                DescriptionTextWidget(text:'It allows me to develop apps for mobile, web, and desktop from a single codebase.', textColor: AppColors.lightblackColor),
                                SizedBox(height:8),
                                DescriptionTextWidget(text:' Flutter ensures smooth performance with pixel-perfect designs.', textColor: AppColors.lightblackColor),
                                SizedBox(height:8),
                                DescriptionTextWidget(text:' I craft beautiful, high-performance apps using Flutter', textColor: AppColors.lightblackColor)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20, top:20,),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Row(
                        children: [
                          Container(
                            height: 250 ,
                            width:300,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(10.67),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:3.0),
                                  child: Container(
                                    height:80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.67),
                                      color:AppColors.bacckgroundColor,
                                      image: DecorationImage(
                                        image: AssetImage('assets/App-images/firebase2.png',),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height:5),
                                BlackTextHeading(text: 'FireBase'),
                                SizedBox(height:8),
                                DescriptionTextWidget(text: 'Firebase is a powerful backend platform that simplifies app development.',textColor: AppColors.lightblackColor),
                                SizedBox(height:8),
                                DescriptionTextWidget(text:'I integrate real-time databases, authentication, and cloud storage. ', textColor: AppColors.lightblackColor),
                                SizedBox(height:8),
                                DescriptionTextWidget(text:'Firebase helps me  make apps scalable, secure, and easy to manage. ', textColor: AppColors.lightblackColor),
                                SizedBox(height:8),
                                DescriptionTextWidget(text: 'It streamlines backend tasks, ensuring smooth performance and growth.', textColor: AppColors.lightblackColor)
                              ],
                            ),
                          ),

                          SizedBox(width:50),
                          Container(
                            height: 250 ,
                            width: 300,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(10.67),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:5.0),
                                  child: Container(
                                    height:80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.67),
                                      color:AppColors.bacckgroundColor,
                                      image: DecorationImage(
                                        image: AssetImage('assets/App-images/firebase2.png',),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height:5),
                                BlackTextHeading(text: 'UI/UX Design'),
                                SizedBox(height:8),
                                DescriptionTextWidget(text: 'Skilled in UI/UX design, I craft visually engaging and user-friendly interfaces.',textColor: AppColors.lightblackColor),
                                SizedBox(height:8),
                                DescriptionTextWidget(text: 'I focus on delivering seamless, intuitive experiences that prioritize the user’s needs', textColor: AppColors.lightblackColor),
                                SizedBox(height:8),
                                DescriptionTextWidget(text: ' From wireframes to polished designs, I ensure every detail enhances usability and visual appeal', textColor: AppColors.lightblackColor),
                                SizedBox(height:8),
                                DescriptionTextWidget(text: ' My designs combine creativity with functionality for effective user experiences', textColor: AppColors.lightblackColor)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width ,  // Adjusted width for proper scaling
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:40,top: 28.0),//text padding
                    child: NormalTextWidget(text: 'My Project', textColor:AppColors.backgroundColor),
                  ),
                  SizedBox(height: 02,),
                  BlackTextHeading(text: 'What I have made?'),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0,top:20,),//container padding
                    child: Row(
                      children: [
                        Container(
                          height: 250 ,
                          width: 250,
                          decoration: BoxDecoration(
                            color: AppColors.bacckgroundColor,
                            borderRadius: BorderRadius.circular(10.67),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Container(
                                  height:200,
                                  width: 280,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.67),
                                    color:AppColors.bacckgroundColor,
                                    image: DecorationImage(
                                      image: AssetImage('assets/App-images/fb1.jpg',),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Divider(color: Colors.black,
                                  thickness: 2,
                                  height: 2),
                              SizedBox(height: 10,),
                              NormalTextWidget(text: 'Facebook Clone', textColor: AppColors.blackColor),
                            ],
                          ),
                        ),
                        SizedBox(width:30 ,),
                        Container(
                          height: 250 ,
                          width: 250,
                          decoration: BoxDecoration(
                            color: AppColors.bacckgroundColor,
                            borderRadius: BorderRadius.circular(10.67),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Container(
                                  height:200,
                                  width: 280,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.67),
                                    color:AppColors.bacckgroundColor,
                                    image: DecorationImage(
                                      image: AssetImage('assets/App-images/wa.png',),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Divider(color: Colors.black,
                                  thickness: 2,
                                  height: 2),
                              SizedBox(height: 10,),
                              NormalTextWidget(text: 'What/sApp Full Clone', textColor: AppColors.blackColor),
                            ],
                          ),
                        ),
                        SizedBox(width:30 ,),
                        Container(
                          height: 250 ,
                          width: 250,
                          decoration: BoxDecoration(
                            color: AppColors.bacckgroundColor,
                            borderRadius: BorderRadius.circular(10.67),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Container(
                                  height:200,
                                  width: 280,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.67),
                                    color:AppColors.bacckgroundColor,
                                    image: DecorationImage(
                                      image: AssetImage('assets/App-images/gold.jpg',),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Divider(color: Colors.black,
                                  thickness: 2,
                                  height: 2),
                              SizedBox(height: 10,),
                              NormalTextWidget(text: 'Gold App Calculator', textColor: AppColors.blackColor),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0,top:20,),//container padding
                    child: Row(
                      children: [
                        Container(
                          height: 250 ,
                          width: 250,
                          decoration: BoxDecoration(
                            color: AppColors.bacckgroundColor,
                            borderRadius: BorderRadius.circular(10.67),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Container(
                                  height:200,
                                  width: 280,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.67),
                                    color:AppColors.bacckgroundColor,
                                    image: DecorationImage(
                                      image: AssetImage('assets/App-images/count.png',),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Divider(color: Colors.black,
                                  thickness: 2,
                                  height: 2),
                              SizedBox(height: 10,),
                              NormalTextWidget(text: 'Counter App', textColor: AppColors.blackColor),
                            ],
                          ),
                        ),
                        SizedBox(width:30 ,),
                        Container(
                          height: 250 ,
                          width: 250,
                          decoration: BoxDecoration(
                            color: AppColors.bacckgroundColor,
                            borderRadius: BorderRadius.circular(10.67),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Container(
                                  height:200,
                                  width: 280,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.67),
                                    color:AppColors.bacckgroundColor,
                                    image: DecorationImage(
                                      image: AssetImage('assets/App-images/port.png',),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Divider(color: Colors.black,
                                  thickness: 2,
                                  height: 2),
                              SizedBox(height: 10,),
                              NormalTextWidget(text: 'Portfolio ', textColor: AppColors.blackColor),
                            ],
                          ),
                        ),
                        SizedBox(width:30 ,),
                        Container(
                          height: 250 ,
                          width: 300,
                          decoration: BoxDecoration(
                            color: AppColors.bacckgroundColor,
                            borderRadius: BorderRadius.circular(10.67),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Container(
                                  height:200,
                                  width: 280,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.67),
                                    color:AppColors.bacckgroundColor,
                                    image: DecorationImage(
                                      image: AssetImage('assets/App-images/todo.png',),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Divider(color: Colors.black,
                                  thickness: 2,
                                  height: 2),
                              SizedBox(height: 10,),
                              NormalTextWidget(text: 'ToDo Task App', textColor: AppColors.blackColor),
                            ],
                          ),
                        )
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



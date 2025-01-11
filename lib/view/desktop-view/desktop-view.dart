import 'package:flutter/material.dart';
import 'package:portfoliowebsite/controller/contants/app-colors/app-colors.dart';
import 'package:portfoliowebsite/controller/widgets/Blackrext-hrading.dart';
import 'package:portfoliowebsite/controller/widgets/DescriptionTextWidget.dart';
import 'package:portfoliowebsite/controller/widgets/NormalTextWidget.dart';
import 'package:portfoliowebsite/controller/widgets/secondTextWidget.dart';
import 'package:url_launcher/url_launcher.dart';

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
                color: AppColors.whiteColor,//primaryColor,
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
                padding: const EdgeInsets.only(left:40,top: 28.0),
                child: NormalTextWidget(text: 'My Skills', textColor:AppColors.backgroundColor),
              ),
              SizedBox(height: 02,),
              BlackTextHeading(text: 'What I am capable of?'),
              Padding(
                padding: const EdgeInsets.only(left:250.0,top: 20),
                child: Row(
                  children: [
                    Container(
                      height: 250 ,
                      width: 500,
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
                            height:80,
                            width: 80,
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
                        DescriptionTextWidget(text: ' Whether for mobile, web, or desktop, I create seamless, reliable solutions.', textColor: AppColors.lightblackColor),
                        SizedBox(height:8),
                        DescriptionTextWidget(text: ' Its strong integration with Flutter ensures smooth cross-platform development.', textColor: AppColors.lightblackColor)
                      ],
                      ),
                    ),
                    SizedBox(width:50),
                    Container(
                      height: 250 ,
                      width: 500,
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
              Padding(
                padding: const EdgeInsets.only(left:250, top:20,),
                child: Row(
                  children: [
                    Container(
                      height: 250 ,
                      width:500,
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
                      width: 500,
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
            ],
          ),
        ),
            Container(
              height: height * 0.9,
              width: width * 1.0, // Adjusted width for proper scaling
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
                   padding: const EdgeInsets.only(left:280.0,top:20,),//container padding
                   child: Row(
                     children: [
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
                    padding: const EdgeInsets.only(left:280.0,top:20,),//container padding
                    child: Row(
                      children: [
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
              height: height * 0.5,
              width: width * 1.0, // Adjusted width for proper scaling
              decoration: BoxDecoration(
                color: AppColors.bacckgroundColor,
              ),
            child: Padding(
              padding: const EdgeInsets.only(left:100.0, top:60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  NormalTextWidget(
                    text: 'Contacts',
                    textColor: AppColors.backgroundColor,
                  ),
                  SizedBox(height: 2),
                  BlackTextHeading(text: 'Get in touch'),
                  SizedBox(height: 2),
                  SecondTextWidget(text: 'areeba.seo05@gmail.com', textColor: AppColors.blackColor),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      InkWell(
                        onTap: () async{
                      final linkedInurl='www.linkedin.com/in/areeba-iqbal-0888b2341';
                      await launchUrl(Uri.parse(linkedInurl));
                      },
                        child: Image.asset('assets/App-images/Linked.png'),
                      ),

                  InkWell(
                    onTap: () async{
                      final giturl='https://github.com/Areeba-ai05';
                      await launchUrl(Uri.parse(giturl));
                    },
                    child: Image.asset('assets/App-images/Git.png'),
                  ),
                  InkWell(
                    onTap: () async{
                      final instaurl='';
                      await launchUrl(Uri.parse(instaurl));
                    },
                    child: Image.asset('assets/App-images/Insta.png'),
                  ),
                    ],
                  ),
                ],
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}

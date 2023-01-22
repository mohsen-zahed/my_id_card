import 'package:flutter/material.dart';
import 'package:my_id_card/size_config.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(
    LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: ((context, orientation) {
            SizeConfig().init(constraints, orientation);
            return const MyApp();
          }),
        );
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 6, 28),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 6, 28),
        shadowColor: Colors.white38,
        elevation: 10,
        centerTitle: true,
        title: Text(
          "My ID",
          style: TextStyle(
            fontSize: SizeConfig.screenWidth(25),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: SizeConfig.screenWidth(140),
            height: SizeConfig.screenHeight(130),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: const DecorationImage(
                image: AssetImage('assets/images/me.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Amir Mohsen Zahed",
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.screenWidth(25),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "Mobile App Developer",
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.screenWidth(15),
            ),
          ),
          Container(
            width: SizeConfig.getProportionateScreenWidth() * 0.4,
            height: 1,
            margin: const EdgeInsets.only(top: 5),
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: SizeConfig.getProportionateScreenWidth() * .15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.email_rounded,
                      color: Colors.blue,
                      size: SizeConfig.screenWidth(30),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "mohsenzahed0077@gmail.com",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.screenWidth(20),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.blue,
                      size: SizeConfig.screenWidth(30),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "(+93) 797 627 651",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.screenWidth(20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

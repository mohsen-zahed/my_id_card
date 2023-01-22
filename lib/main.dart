import 'package:flutter/material.dart';
import 'package:my_id_card/size_config.dart';

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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.email_rounded,
                color: Colors.blue,
                size: SizeConfig.screenWidth(30),
              ),
              const SizedBox(width: 20),
              Text('mohsenzahed0077@gmail.com'),
            ],
          )
        ],
      ),
    );
  }
}

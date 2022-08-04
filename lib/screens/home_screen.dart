import 'package:flutter/material.dart';
import 'package:flutter_golang/utils/app_colors.dart';
import 'package:flutter_golang/widgets/button_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Go-Flutter Application'),
      //   backgroundColor: const Color.fromARGB(255, 224, 216, 177),
      // ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("home_back.png"),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                  width: MediaQuery.of(context).size.width / 20,
                ),
                IconButton(
                  onPressed: () => {
                    print("Image button pressed"),
                  },
                  icon: Image.asset("logo_v2.png"),
                  iconSize: 40,
                ),
                RichText(
                    text: TextSpan(
                        text: 'Go-Flutter',
                        style: TextStyle(
                          color: AppColors.mainColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ))),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.7,
                ),
                ButtonWidget(
                  backgroundColor: AppColors.greyColor,
                  text: "Courses",
                  textColor: AppColors.mainColor,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 70,
                ),
                ButtonWidget(
                  backgroundColor: AppColors.mainColor,
                  text: "Add Course",
                  textColor: AppColors.whiteColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

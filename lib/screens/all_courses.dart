import 'package:flutter/material.dart';
import 'package:flutter_golang/utils/app_colors.dart';
import 'package:flutter_golang/widgets/button_widget.dart';

class AllCourses extends StatelessWidget {
  const AllCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("home_back.png"),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 9,
                // width: MediaQuery.of(context).size.width / 35,
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
                width: MediaQuery.of(context).size.width / 1.37,
              ),
              ButtonWidget(
                backgroundColor: AppColors.mainColor,
                text: "Add Course",
                textColor: AppColors.whiteColor,
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

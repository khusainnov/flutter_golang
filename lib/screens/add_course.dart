import 'package:flutter/material.dart';
import 'package:flutter_golang/utils/app_colors.dart';
import 'package:flutter_golang/widgets/button_widget.dart';
import 'package:flutter_golang/widgets/textfield_widget.dart';

class AddCourse extends StatelessWidget {
  const AddCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController courseNameController = TextEditingController();
    TextEditingController courseDiscriptionController = TextEditingController();

    return Scaffold(
      body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          padding: EdgeInsets.only(left: 30, right: 30),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("home_back.png"),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 8,
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
                    backgroundColor: AppColors.greyColor,
                    text: "Courses",
                    textColor: AppColors.mainColor,
                  ),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width / 70,
                  // ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(left: 30, right: 30)),
                  TextFieldWidget(
                    textController: courseNameController,
                    hintText: "Course Name",
                    borderRadius: 15,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFieldWidget(
                    textController: courseDiscriptionController,
                    hintText: "Course Description",
                    borderRadius: 15,
                    maxLines: 5,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  ButtonWidget(
                      backgroundColor: AppColors.mainColor,
                      text: "Add",
                      textColor: AppColors.whiteColor),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2.5,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

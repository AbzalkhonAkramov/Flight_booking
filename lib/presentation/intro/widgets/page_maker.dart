import 'package:flight_booking_app/presentation/intro/widgets/row_of_lines.maker.dart';
import 'package:flutter/material.dart';

Widget page(
    double height,
    double width,
    PageController pageController,
    String imagePath,
    String content,
    String buttonContent,
    VoidCallback function,
    int pageNumber) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
    child: SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.063,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(imagePath),
                height: height * 0.5,
                width: width * 0.85,
                fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(
            height: height * 0.0279,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: width * 0.02,
              children: makeRowOfLines(width, height, pageNumber)),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            textAlign: TextAlign.start,
            content,
            style: TextStyle(
              fontSize: height * 0.05,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Text(
                        "Skip",
                        style: TextStyle(
                            fontSize: height * 0.023,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                height: height * 0.06,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(height * 0.013),
                ),
                child: TextButton(
                  style: ButtonStyle(
                      minimumSize: WidgetStatePropertyAll(Size(width, width))),
                  onPressed: function,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: width * 0.02,
                    children: [
                      Text(
                        buttonContent,
                        style: TextStyle(
                          fontSize: height * 0.021,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.arrow_circle_right,
                        color: Colors.white,
                        size: height * 0.023,
                      ),
                    ],
                  ),
                ),
              )),
            ],
          ),
        ],
      ),
    ),
  );
}

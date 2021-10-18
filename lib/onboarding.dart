import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:onboarding/contextModel.dart';
import 'package:onboarding/home.dart';
//import 'package:onboarding/contextModel.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: contents.length,
              controller: _pageController,
              onPageChanged: (int i) {
                setState(() {
                  currentIndex = i;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03,
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.height * 0.02,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.03),
                        child: Image(
                          image: AssetImage(contents[i].image),
                          height: MediaQuery.of(context).size.height * 0.35,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Image(
                        image: AssetImage(contents[i].image1),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Text(
                        contents[i].title,
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.height * 0.035),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            contents[i].discription,
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.05,
                            left: MediaQuery.of(context).size.width * 0.37,
                            bottom: MediaQuery.of(context).size.height * 0.03),
                        child: Container(
                          color: Colors.transparent,
                          height: MediaQuery.of(context).size.height * 0.03,
                          child: ListView.builder(
                              itemCount: contents.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (_, i) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 6.0),
                                      height: 12.0,
                                      width: 12.0,
                                      decoration: BoxDecoration(
                                          color: currentIndex == i
                                              ? Colors.black
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  ],
                                );
                              }),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height * 0.03),
                        child: ElevatedButton(
                          child: Text(
                            "Next",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          style: ButtonStyle(
                              minimumSize: MaterialStateProperty.resolveWith(
                                  (states) => Size(
                                      size.width * 0.8, size.height * 0.05)),
                              backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.red)),
                          onPressed: () {
                            if (i == contents.length - 1) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                            }
                            _pageController.nextPage(
                                duration: Duration(microseconds: 500),
                                curve: Curves.bounceIn);
                          },
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
        ],
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mawahib/buttons/buttons.dart';
import 'package:mawahib/resources/colors.dart';

final List<Widget> itemList = [
  SliderWidget(),
  SliderWidget(),
  SliderWidget(),
  SliderWidget()
];
int _currentPosition = 0;

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        SizedBox(
          child: Stack(
            children: [
              CarouselSlider(
                items: const [
                  SliderWidget(),
                  SliderWidget(),
                  SliderWidget(),
                  SliderWidget()
                ],
                options: CarouselOptions(
                  height: 500,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) =>
                      setState(() => _currentPosition = index),
                ),
              ),
              Positioned(
                left: 10,
                bottom: 12,
                child: DotsIndicator(
                  dotsCount: itemList.length,
                  position: _currentPosition.toDouble(),
                  decorator: const DotsDecorator(
                      shape: CircleBorder(),
                      size: Size(8, 8),
                      color: Color.fromARGB(255, 212, 212, 212),
                      activeColor: primaryColorLight,
                      activeSize: Size(11, 11)),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 10),
          child: Text.rich(TextSpan(
              text: 'Mawahib ',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.w900, color: secondaryColor),
              children: [
                TextSpan(
                    text:
                        "connects businesses with \nindependent professionals and agencies \naround the MENA region.",
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.black,
                        height: 1.5,
                        fontWeight: FontWeight.w400))
              ])),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 60),
          child: PrimaryButton(
            buttonName: "Jobseeker Sign up",
            buttonColor: primaryColor,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 60),
          child: PrimaryButton(
            buttonName: "Recruiter Sign up",
            buttonColor: secondaryColor,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 130),
          child: SecondaryButton(buttonName: "Login"),
        )
      ]),
    );
  }
}

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 500,
        ),
        const _Gradient(),
        const _WideBox(
          boxcolor: bluish,
          topSpace: 160,
        ),
        const _WideBox(
          boxcolor: secondaryColor,
          topSpace: 260,
        ),
        const _WideBox(boxcolor: primaryColorLight, topSpace: 370),
        const _CircleBox(
            leftSpace: 83,
            buttomSpace: 25,
            circleRadius: 178,
            bgColor: primaryColor),
        const _CircleBox(
            buttomSpace: 385,
            leftSpace: 177,
            circleRadius: 11,
            bgColor: primaryColor),
        _CircleBox(
          leftSpace: 160,
          buttomSpace: 105,
          circleRadius: 210,
          bgColor: scaffoldBgColor.withOpacity(0.1),
        ),
        const _CircleBox(
            buttomSpace: 364,
            leftSpace: 350,
            circleRadius: 8,
            bgColor: scaffoldBgColor),
        const _CircleBox(
            buttomSpace: 373, leftSpace: 315, circleRadius: 5, bgColor: bluish),
        const _CircleBox(
            buttomSpace: 410,
            leftSpace: 335,
            circleRadius: 3,
            bgColor: secondaryColor),
        Positioned(
          bottom: 25,
          left: 58,
          child: Image.asset(
            "assets/images/man.png",
          ),
        ),
        Positioned(
          left: 15,
          bottom: 269,
          child: Text(
            "Quick\nEasy\nSimple!",
            style: Theme.of(context).textTheme.headline3!.copyWith(
                fontWeight: FontWeight.w800,
                color: scaffoldBgColor,
                height: 1.05),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}

class _Gradient extends StatelessWidget {
  const _Gradient({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              stops: [0.3, 0.7],
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
              colors: [
                gradientColor,
                oceanGreen,
              ])),
    );
  }
}

class _CircleBox extends StatelessWidget {
  final double? leftSpace;
  final double? buttomSpace;
  final double? circleRadius;
  final Color bgColor;
  const _CircleBox(
      {Key? key,
      this.leftSpace,
      this.buttomSpace,
      required this.circleRadius,
      required this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: leftSpace,
      bottom: buttomSpace,
      child: CircleAvatar(
        radius: circleRadius,
        backgroundColor: bgColor,
      ),
    );
  }
}

class _WideBox extends StatelessWidget {
  final Color boxcolor;
  final double? topSpace;

  const _WideBox({Key? key, required this.boxcolor, this.topSpace})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topSpace,
      child: Container(
        height: 60,
        width: 180,
        decoration: BoxDecoration(color: boxcolor),
      ),
    );
  }
}

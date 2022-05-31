import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mawahib/resources/colors.dart';
import 'package:mawahib/resources/size_constants.dart';
import 'package:mawahib/router.gr.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 6),
        () => context.router.push(const OnBoardingRoute()));

    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          const _BackgroundImage(),
          const _Gradient(
            color1: colorblue,
            color2: primaryColor,
            color3: secondaryColor,
          ),
          Center(
            child: Text(
              "mawahib",
              style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontWeight: FontWeight.w500, color: scaffoldBgColor),
            ),
          ),
          const _Footer()
        ]),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 720,
      left: 85,
      child: Center(
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.copyright,
                  size: 15,
                  color: scaffoldBgColor,
                ),
                SBC.sW,
                const _FooterText(
                  text: "2022 Mawahib. All rights reserved",
                ),
              ],
            ),
            SBC.lH,
            const _FooterText(text: "V1.05122022")
          ],
        ),
      ),
    );
  }
}

class _Gradient extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color? color3;
  const _Gradient(
      {Key? key, required this.color1, required this.color2, this.color3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              stops: const [
            0.0,
            0.4,
            0.7
          ],
              colors: [
            color1.withOpacity(0.9),
            color2.withOpacity(0.9),
            color3!.withOpacity(0.9),
          ])),
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/image2.jpg"),
                fit: BoxFit.fitHeight)));
  }
}

class _FooterText extends StatelessWidget {
  final String text;
  const _FooterText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(fontWeight: FontWeight.w500, color: scaffoldBgColor));
  }
}

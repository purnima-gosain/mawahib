import 'package:flutter/material.dart';
import 'package:mawahib/resources/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonName;
  final Color? buttonColor;
  const PrimaryButton({Key? key, required this.buttonName, this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          primary: buttonColor,
          minimumSize: const Size(230, 52),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)))),
      child: Text(
        buttonName,
        style: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(color: scaffoldBgColor, fontWeight: FontWeight.w700),
      ),
    );
  }
}

class ThirdButton extends StatelessWidget {
  final String buttonName;
  const ThirdButton({Key? key, required this.buttonName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: const Color.fromARGB(255, 212, 212, 212).withOpacity(0.5),
            spreadRadius: 0.1,
            blurRadius: 10,
            offset: const Offset(0, 3))
      ]),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            primary: scaffoldBgColor,
            minimumSize: const Size(230, 45),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)))),
        child: Text(
          buttonName,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final String buttonName;
  const SecondaryButton({
    Key? key,
    required this.buttonName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          side: const BorderSide(color: Colors.black),
          primary: scaffoldBgColor,
          minimumSize: const Size(230, 52),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)))),
      child: Text(
        buttonName,
        style: Theme.of(context)
            .textTheme
            .subtitle2!
            .copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }
}

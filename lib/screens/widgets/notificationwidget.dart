import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 80,
          width: 80,
          child: Stack(children: const [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/1.png"),
              ),
            ),
            Positioned(
              bottom: 10,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/2.png"),
              ),
            ),
          ]),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              RichText(
                maxLines: 2,
                text: const TextSpan(
                    text: "John Steve",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: " and \n",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: "Sam Wincherter")
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Liked your recipe  .  h1",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
        Image.asset(
          "assets/images/intro_screen_1.png",
          height: 64,
          width: 64,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(
              "Hello",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              "ACode 👋",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            )
          ],
        ),
        Spacer(),
        Stack(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 200),
              child: Positioned(
                right: 10,
                top: 10,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_outlined),
              color: Colors.white70,
              iconSize: 30,
            )
          ],
        )
      ],
    );
  }
}

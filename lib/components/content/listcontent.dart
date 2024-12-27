import 'package:flutter/material.dart';

class ListContent extends StatefulWidget {
  const ListContent({super.key});

  @override
  State<ListContent> createState() => _ListContentState();
}

class _ListContentState extends State<ListContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Color.fromARGB(20, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          cardHeader(),
          SizedBox(
            height: 20,
          ),
          cardContent()
        ],
      ),
    );
  }

  Column cardContent() {
    return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mengerjakan Tugas Ipa',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            taskTime(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                dueDate(),
                SizedBox(
                  width: 30,
                  height: 30,
                  child: Image(
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    image: AssetImage('assets/dummy-photo.jpg'),
                  ),
                ),
              ],
            )
          ],
        );
  }

  Row dueDate() {
    return Row(
                  children: [
                    Text(
                      'Due Date : ',
                      style: TextStyle(color: Colors.white54, fontSize: 17),
                    ),
                    Text(
                      'August 25',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )
                  ],
                );
  }

  Row taskTime() {
    return Row(
              spacing: 3,
              children: [
                Icon(
                  Icons.timer,
                  color: Colors.white54,
                ),
                Text(
                  '10:00 AM',
                  style: TextStyle(color: Colors.white54),
                ),
                Text(
                  ' - ',
                  style: TextStyle(color: Colors.white54),
                ),
                Text(
                  '06:00 PM',
                  style: TextStyle(color: Colors.white54),
                )
              ],
            );
  }

  Row cardHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          decoration: BoxDecoration(
              color: Color(0xffFC4340),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Text(
            "High",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Text(
          '82%',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}

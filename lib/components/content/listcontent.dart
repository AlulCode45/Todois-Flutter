import 'package:flutter/material.dart';

class ListContent extends StatefulWidget {
  final String taskTitle;
  final String priority;
  final String? due_date;

  const ListContent({
    super.key,
    required this.taskTitle,
    required this.priority,
    this.due_date,
  });

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
          widget.taskTitle,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        widget.due_date != null ? taskTime() : Container(),
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
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/dummy-photo.jpg'),
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
              color: () {
                switch (widget.priority) {
                  case 'high':
                    return Colors.red;
                  case 'medium':
                    return Colors.yellow;
                  default:
                    return Colors.grey;
                }
              }(),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Text(
            widget.priority,
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

import 'package:first/components/content/listcontent.dart';
import 'package:first/components/createModal.dart';
import 'package:first/components/header.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeHeader(),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your Tasks !',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => CreateModal(
                    titleController: _titleController,
                    descriptionController: _descriptionController,
                  ),
                ),
                icon: Icon(Icons.add),
                color: Colors.white,
              )
            ],
          ),
          ListContent(taskTitle: "Belajar mengagumi", priority: 'high')
        ],
      ),
    );
  }
}

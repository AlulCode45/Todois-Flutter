import 'dart:ui';
import 'package:flutter/material.dart';

class CreateModal extends StatelessWidget {
  final TextEditingController titleController;
  final TextEditingController descriptionController;

  CreateModal({
    super.key,
    required this.titleController,
    required this.descriptionController,
  });

  final List<String> _priority = ['high', 'medium', 'slow'];
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor:
          Colors.blueAccent.shade400, // Make the dialog background transparent
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          // BackdropFilter for the frosted glass effect
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1), // Frosted glass color
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.white.withOpacity(0.2), // Glass border
                  width: 1.5,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Add your task!',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: titleController,
                      style: TextStyle(
                        color: Colors.white,
                      ), // Text color
                      decoration: InputDecoration(
                        label: Text('Title'),
                        floatingLabelStyle: TextStyle(color: Colors.white),
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1),
                          borderSide: BorderSide(
                            color:
                                Colors.white.withOpacity(0.5), // Border color
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1),
                          borderSide: BorderSide(
                            color: Colors.white, // Focused border color
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: descriptionController,
                      keyboardType: TextInputType.multiline,
                      textInputAction: TextInputAction.newline,
                      minLines: 1,
                      maxLines: 5,
                      decoration: InputDecoration(
                        label: Text('Description'),
                        floatingLabelStyle: TextStyle(color: Colors.white),
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1),
                          borderSide: BorderSide(
                            color:
                                Colors.white.withOpacity(0.5), // Border color
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1),
                          borderSide: BorderSide(
                            color: Colors.white, // Focused border color
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DropdownButtonFormField(
                      decoration: InputDecoration(
                        floatingLabelStyle: TextStyle(color: Colors.white),
                        label: Text('Priority'),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1),
                          borderSide: BorderSide(
                            color:
                                Colors.white.withOpacity(0.5), // Border color
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1),
                          borderSide: BorderSide(
                            color: Colors.white, // Focused border color
                            width: 1.5,
                          ),
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                      iconEnabledColor: Colors.white,
                      focusColor: Colors.white,
                      dropdownColor: Colors.white,
                      items: _priority.map((String priority) {
                        return DropdownMenuItem(
                          value: priority,
                          child: Text(
                            priority,
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text('Save Task'))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

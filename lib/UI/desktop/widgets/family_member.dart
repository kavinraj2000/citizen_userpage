import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class FamilyMember extends StatelessWidget {
  final String name;
  final String relation;

  final log = Logger();

  FamilyMember({super.key, required this.name, required this.relation});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 227, 229, 245),
      elevation: 0,
      child: Container(
        transform: Matrix4.translationValues(1, -5, 0),
        width: 145,
        height: 50,
        child: ListTile(
          leading: CircleAvatar(
            child: Text(name.substring(0, 1)),
            backgroundColor: Color.fromARGB(255, 241, 241, 249),
            radius: 15,
          ),
          title: Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.4),
          ),
          subtitle: Text(
            relation,
            style: TextStyle(fontSize: 8.4, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

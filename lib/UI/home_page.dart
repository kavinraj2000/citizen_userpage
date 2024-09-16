import 'package:citizen_userpage/UI/desktop/desktop_home_page.dart';
import 'package:citizen_userpage/UI/mobile/mobile_home_page.dart';
import 'package:citizen_userpage/UI/tablet/tab_home_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveValue<Widget>(
      context,
      defaultValue: const DesktopHomePage(),
      conditionalValues: [
        const Condition.equals(
          name: TABLET,
          value: TabHomePage(),
        ),
        const Condition.smallerThan(
          name: TABLET,
          value: MobileHomePage(),
        ),
      ],
    ).value;
  }

  Widget buildFamilyMemberCard(String initial, String name, String role) {
    return Card(
      color: Color.fromARGB(255, 227, 229, 245),
      elevation: 0,
      child: Container(
        transform: Matrix4.translationValues(1, -5, 0),
        width: 145,
        height: 50,
        child: ListTile(
          leading: CircleAvatar(
            child: Text(initial),
            backgroundColor: Color.fromARGB(255, 241, 241, 249),
            radius: 15,
          ),
          title: Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.4),
          ),
          subtitle: Text(
            role,
            style: TextStyle(fontSize: 8.4, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget buildBeneficiaryCard() {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      SizedBox(
        height: 40,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildCustomContainer(),
          SizedBox(width: 20),
          buildCustomContainer(),
        ],
      )
    ]);
  }

  Widget buildCustomContainer() {
    return Container(
      transform: Matrix4.translationValues(12, -5, 0),
      width: 300,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Transform.translate(
            offset: Offset(10, -50),
            child: Text(
              "Labour Welfare",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 10), // Add some space between text and column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform.translate(
                  offset: Offset(-130, 40),
                  child: Text(
                    "Individual",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12,
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(90, -10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Ongoing",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-137, 30),
                  child: Icon(
                    Icons.calendar_month_outlined,
                    color: const Color.fromARGB(255, 145, 144, 144),
                    size: 25,
                  ),
                ),
                Transform.translate(
                  offset: Offset(-106, 6),
                  child: Text(
                    "Date",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

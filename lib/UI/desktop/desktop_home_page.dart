import 'package:flutter/material.dart';

class DesktopHomePage extends StatefulWidget {
  const DesktopHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _DesktopHomePageState();
}

class _DesktopHomePageState extends State<DesktopHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9EBF2),
      appBar: AppBar(
        title: Container(
          height: 45,
          width: 500,
          transform: Matrix4.translationValues(350.0, 0.0, 0.0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: 'Search',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
            ),
          ),
        ),
        toolbarHeight: 70,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        actions: <Widget>[
          Transform.translate(
            offset: Offset(-80, 0),
            child: IconButton(
              icon: Icon(Icons.notifications_none_outlined),
              onPressed: () {},
            ),
          ),
          Transform.translate(
            offset: Offset(-70, 0),
            child: CircleAvatar(
              child: Text("J"),
              backgroundColor: Color.fromARGB(255, 176, 178, 180),
              radius: 15,
            ),
          ),
          Transform.translate(
            offset: Offset(-60, 0),
            child: Text(
              "Jhon",
              style: TextStyle(fontSize: 20),
            ),
          ),
          // Updated DropdownButton with icons and language names

          Transform.translate(
            offset: Offset(-50, 0),
            child: DropdownButtonHideUnderline(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      width: 1, color: const Color.fromARGB(255, 0, 0, 0)),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButton<String>(
                  value: 'English',
                  items: [
                    DropdownMenuItem<String>(
                      value: 'English',
                      child: Row(
                        children: [
                          Icon(Icons.language,
                              color: Colors.black), // Language icon
                          SizedBox(width: 10),
                          Text('English'),
                        ],
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Spanish',
                      child: Row(
                        children: [
                          Icon(Icons.language, color: Colors.black),
                          SizedBox(width: 10),
                          Text('Spanish'),
                        ],
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: 'French',
                      child: Row(
                        children: [
                          Icon(Icons.language, color: Colors.black),
                          SizedBox(width: 10),
                          Text('French'),
                        ],
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: 'German',
                      child: Row(
                        children: [
                          Icon(Icons.language, color: Colors.black),
                          SizedBox(width: 10),
                          Text('German'),
                        ],
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Chinese',
                      child: Row(
                        children: [
                          Icon(Icons.language, color: Colors.black),
                          SizedBox(width: 10),
                          Text('Chinese'),
                        ],
                      ),
                    ),
                  ],
                  onChanged: (String? newValue) {
                    // Handle dropdown item selection
                    print(newValue);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30),
            Container(
              transform: Matrix4.translationValues(100, 0, 19),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              width: 300,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    "https://cdn-icons-png.flaticon.com/512/7077/7077313.png",
                    width: 60,
                    height: 59,
                  ),
                  Transform.translate(
                    offset: Offset(8, -16),
                    child: const Text("Jhon",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            overflow: TextOverflow.ellipsis)),
                  ),
                  Transform.translate(
                    offset: Offset(-30, 10),
                    child: Text("individual",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 199, 199, 199),
                            overflow: TextOverflow.ellipsis)),
                  ),
                  Transform.translate(
                      offset: Offset(-90, 35),
                      child: Text("ID:87683457683",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis))
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(87, 0),
                    child: Text(
                      "Family Members",
                      style: TextStyle(
                        fontSize: 16.2,
                        fontFamily: 'Times New Roman',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(160, 0),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.add, color: Colors.white),
                      label: Text("Add New",
                          style: TextStyle(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 64, 116),
                        padding: EdgeInsets.symmetric(
                          vertical: 9,
                          horizontal: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Transform.translate(
              offset: Offset(80, 0),
              child: Padding(
                padding: EdgeInsets.all(9),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7.2),
                  ),
                  width: 700,
                  height: 90,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        buildFamilyMemberCard("L", "Lakshmi", "Mother"),
                        buildFamilyMemberCard("J", "Jothi", "Sister"),
                        buildFamilyMemberCard("P", "Pooja", "Daughter"),
                        buildFamilyMemberCard("B", "Ben", "Friend"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(80, -80),
                    child: const Text(
                      "Beneficiary of",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.2,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(-32, 0),
                    child: Expanded(child: buildBeneficiaryCard()),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform.translate(
                  offset: Offset(-120, 40),
                  child: Text(
                    "Individual",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12,
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(60, -10),
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
                  offset: Offset(-107, 30),
                  child: Icon(
                    Icons.calendar_month_outlined,
                    color: const Color.fromARGB(255, 145, 144, 144),
                    size: 25,
                  ),
                ),
                Transform.translate(
                  offset: Offset(-76, 6),
                  child: Text(
                    "Date",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-106, 6),
                  child: Text(
                    "1 Aug to 10th Sep",
                    style: TextStyle(fontSize: 12),
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

import 'package:flutter/material.dart';

class TabHomePage extends StatefulWidget {
  const TabHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _TabHomePageState();
}

class _TabHomePageState extends State<TabHomePage> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isTablet = screenWidth >= 600 &&
        screenWidth <= 1024; // Consider a range for tablet

    return Scaffold(
      backgroundColor: const Color(0xFFE9EBF2),
      appBar: AppBar(
        title: Container(
          height: 45,
          width: isTablet ? screenWidth * 0.4 : screenWidth * 0.2,
          transform: Matrix4.translationValues(
              isTablet ? screenWidth * 0.1 : 350.0, 0.0, 0.0),
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
            offset: Offset(isTablet ? -screenWidth * 0.110 : -300, 0),
            child: IconButton(
              icon: Icon(Icons.notifications_none_outlined),
              onPressed: () {
                // Handle notification icon press
              },
            ),
          ),
          Transform.translate(
            offset: Offset(isTablet ? -screenWidth * 0.110 : -250, 0),
            child: CircleAvatar(
              child: Text("J"),
              backgroundColor: Color.fromARGB(255, 176, 178, 180),
              radius: 15,
            ),
          ),
          Transform.translate(
              offset: Offset(isTablet ? -screenWidth * 0.100 : 240, 0),
              child: Text(
                "Jhon",
                style: TextStyle(fontSize: isTablet ? 18 : 20),
              )),
          Transform.translate(
            offset: Offset(-50, 0),
            child: DropdownButtonHideUnderline(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(
                  //     width: 1, color: const Color.fromARGB(255, 0, 0, 0)),
                  // borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButton<String>(
                  icon: Icon(Icons.language),
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
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                          ),
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
            SizedBox(height: isTablet ? 20 : 30),
            Container(
              transform: Matrix4.translationValues(
                  isTablet ? screenWidth * 0.05 : 80, 0, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              width: isTablet ? screenWidth * 0.5 : 300,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    "https://cdn-icons-png.flaticon.com/512/7077/7077313.png",
                    width: isTablet ? 50 : 60,
                    height: isTablet ? 50 : 59,
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
            SizedBox(height: isTablet ? 15 : 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(isTablet ? screenWidth * 0.04 : 87, 0),
                    child: Text(
                      "Family Members",
                      style: TextStyle(
                        fontSize: isTablet ? 14 : 16.2,
                        fontFamily: 'Times New Roman',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(isTablet ? screenWidth * 0.2 : 160, 0),
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
            SizedBox(height: isTablet ? 8 : 10),
            Transform.translate(
              offset: Offset(isTablet ? screenWidth * 0.04 : 80, 0),
              child: Padding(
                padding: EdgeInsets.all(9),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7.2),
                  ),
                  width: isTablet ? screenWidth * 0.8 : 500,
                  height: 90,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        buildFamilyMemberCard(
                            "L", "Lakshmi", "Mother", isTablet),
                        buildFamilyMemberCard("J", "Jothi", "Sister", isTablet),
                        buildFamilyMemberCard(
                            "P", "Pooja", "Daughter", isTablet),
                        buildFamilyMemberCard("B", "Ben", "Friend", isTablet),
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
                    offset: Offset(isTablet ? screenWidth * 0.04 : 80, -80),
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
                    offset: Offset(isTablet ? screenWidth * -0.1 : -30, 0),
                    child: Expanded(child: buildBeneficiaryCard(isTablet)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFamilyMemberCard(
      String initial, String name, String role, bool isTablet) {
    return Card(
      color: Color.fromARGB(255, 227, 229, 245),
      elevation: 0,
      child: Container(
        transform: Matrix4.translationValues(1, -5, 0),
        width: isTablet ? 120 : 145,
        height: 50,
        child: ListTile(
          leading: CircleAvatar(
            child: Text(initial),
            backgroundColor: Color.fromARGB(255, 241, 241, 249),
            radius: 13,
          ),
          title: Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 9.0,
            ),
          ),
          subtitle: Text(
            role,
            style: TextStyle(fontSize: 7.4, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget buildBeneficiaryCard(bool isTablet) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      SizedBox(
        height: 40,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildCustomContainer(isTablet),
          SizedBox(width: 20),
          buildCustomContainer(isTablet),
        ],
      )
    ]);
  }

  Widget buildCustomContainer(bool isTablet) {
    return Container(
      transform: Matrix4.translationValues(12, -5, 0),
      width: isTablet ? 250 : 300,
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
                  offset: Offset(-126, 40),
                  child: Text(
                    "Individual",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12,
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(5, -10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Ongoing",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(90, 30),
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
                  offset: Offset(-119, 30),
                  child: Icon(
                    Icons.calendar_month_outlined,
                    color: const Color.fromARGB(255, 145, 144, 144),
                    size: 25,
                  ),
                ),
                Transform.translate(
                  offset: Offset(-95, 6),
                  child: Text(
                    "Date",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-126, 6),
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

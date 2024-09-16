import 'package:flutter/material.dart';

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile =
        screenWidth <= 600; // Adjusted for mobile devices <= 600px

    return Scaffold(
      backgroundColor: const Color(0xFFE9EBF2),
      appBar: AppBar(
        title: Container(
          height: 45,
          width: isMobile
              ? screenWidth * 0.65
              : screenWidth * 0.5, // Adjust for smaller mobile view
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
          IconButton(
            icon: Icon(Icons.notifications_none_outlined),
            onPressed: () {
              // Handle notification icon press
            },
          ),
          CircleAvatar(
            child: Text("J"),
            backgroundColor: Color.fromARGB(255, 176, 178, 180),
            radius: isMobile ? 12 : 15, // Adjust for mobile
          ),
          SizedBox(width: isMobile ? 5 : 10), // Adjust for mobile
          Text(
            "Jhon",
            style: TextStyle(fontSize: isMobile ? 16 : 18),
          ),
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              icon: Icon(Icons.language),
              items: [
                DropdownMenuItem<String>(
                  value: 'English',
                  child: Row(
                    children: [
                      Icon(Icons.language, color: Colors.black),
                      SizedBox(width: 10),
                      Text('English'),
                    ],
                  ),
                ),
                // Add other languages here...
              ],
              onChanged: (String? newValue) {
                // Handle dropdown item selection
                print(newValue);
              },
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: isMobile ? 20 : 15), // Adjust for mobile
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 20 : 40), // Mobile padding
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              width: isMobile ? screenWidth * 0.9 : 300, // Adjust for mobile
              height: 100,
              child: Row(
                children: [
                  Image.network(
                    "https://cdn-icons-png.flaticon.com/512/7077/7077313.png",
                    width: isMobile ? 40 : 45, // Adjust for mobile
                    height: isMobile ? 40 : 45, // Adjust for mobile
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Jhon",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: isMobile ? 16 : 18)),
                      Text("Individual",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 199, 199, 199),
                              fontSize: 12)),
                      Text("ID:87683457683",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: isMobile ? 10 : 15), // Adjust for mobile
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Family Members",
                    style: TextStyle(
                      fontSize: isMobile ? 12 : 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add, color: Colors.white, size: 16),
                    label: Text("Add New",
                        style: TextStyle(color: Colors.white, fontSize: 12)),
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
                ],
              ),
            ),
            SizedBox(height: isMobile ? 8 : 10),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 20 : 40), // Mobile padding
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7.2),
                ),
                width: screenWidth,
                height: 90,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      buildFamilyMemberCard("L", "Lakshmi", "Mother", isMobile),
                      buildFamilyMemberCard("J", "Jothi", "Sister", isMobile),
                      buildFamilyMemberCard("P", "Pooja", "Daughter", isMobile),
                      buildFamilyMemberCard("B", "Ben", "Friend", isMobile),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: isMobile ? 10 : 15),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 20 : 40), // Mobile padding
              child: Text(
                "Beneficiary of",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: isMobile ? 12 : 14,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 20 : 40), // Mobile padding
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildBeneficiaryCard(isMobile),
                  buildBeneficiaryCard(isMobile),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFamilyMemberCard(
      String initial, String name, String role, bool isMobile) {
    return Card(
      color: Color.fromARGB(255, 227, 229, 245),
      elevation: 0,
      child: Container(
        width: isMobile ? 100 : 120, // Adjust width for mobile
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
              fontSize: isMobile ? 10 : 12, // Adjust for mobile
            ),
          ),
          subtitle: Text(
            role,
            style: TextStyle(
                fontSize: isMobile ? 8 : 10,
                fontWeight: FontWeight.bold), // Adjust for mobile
          ),
        ),
      ),
    );
  }

  Widget buildBeneficiaryCard(bool isMobile) {
    return Container(
      width: isMobile ? 140 : 200, // Adjust width for mobile
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(
            "Labour Welfare",
            style: TextStyle(
                fontSize: isMobile ? 14 : 18,
                fontWeight: FontWeight.bold), // Adjust for mobile
          ),
          Text(
            "Individual",
            style: TextStyle(
              fontSize: isMobile ? 12 : 14, // Adjust for mobile
            ),
          ),
          SizedBox(height: 10),
          Text(
            "1 Aug to 10th Sep",
            style: TextStyle(fontSize: isMobile ? 10 : 12), // Adjust for mobile
          ),
        ],
      ),
    );
  }
}

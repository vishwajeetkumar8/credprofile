import 'package:flutter/material.dart';


class CredProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CredProfileScreen(),
    );
  }
}

class CredProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.white),
        title: Text('Profile', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(Icons.support_agent, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/profile.jpg'), // Replace with NetworkImage or asset
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('andaz Kumar', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('member since Dec, 2020', style: TextStyle(color: Colors.grey))
                  ],
                ),
                Spacer(),
                Icon(Icons.edit, color: Colors.white54)
              ],
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.directions_car, color: Colors.white),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text("get to know your vehicles, inside out", style: TextStyle(color: Colors.white70)),
                  ),
                  Icon(Icons.arrow_forward, color: Colors.white)
                ],
              ),
            ),
            SizedBox(height: 20),
            buildInfoTile("credit score", "757", isRefreshable: true),
            buildInfoTile("lifetime cashback", "₹3"),
            buildInfoTile("bank balance", "check"),
            SizedBox(height: 20),
            Text("YOUR REWARDS & BENEFITS", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            buildInfoTile("cashback balance", "₹0"),
            buildInfoTile("coins", "26,46,583"),
            buildInfoTile("win upto Rs 1000", "refer and earn"),
            SizedBox(height: 20),
            Text("TRANSACTIONS & SUPPORT", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            buildInfoTile("all transactions", ""),
          ],
        ),
      ),
    );
  }

  Widget buildInfoTile(String title, String value, {bool isRefreshable = false}) {
    return Column(
      children: [
        ListTile(
          title: Text(title, style: TextStyle(color: Colors.white70)),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (isRefreshable)
                Text("REFRESH AVAILABLE", style: TextStyle(color: Colors.greenAccent, fontSize: 12)),
              SizedBox(width: 8),
              Text(value, style: TextStyle(color: Colors.white)),
              Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white54),
            ],
          ),
        ),
        Divider(color: Colors.grey[800]),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(" Doctors Dashboard",
          style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: const Icon(Icons.menu,
          color: Colors.black,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer(); 
          },
          ),
        ),
        
        drawer: Drawer(
          child:ListView(
            padding: EdgeInsets.zero,
             children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF1FDE60), Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
       child: Text(
                'Sidebar Content',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                // Handle navigation to home page or any other action here
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Handle navigation to settings page or any other action here
              },
            ),
            // Add more items to the sidebar (drawer) as needed
          ],
        ),
          ),
              
        body: Stack(
        children: [
          Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF1FDE60),
                 Colors.white,
                 ],
              stops: [0.0, 1.0],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                 Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search number',
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.filter_list),
                  onPressed: () {
                    // Handle filter button press or any other action here
                  },
                ),
              ],
            ),
          ),
         
        ]
        ),
    
    );
        
      
  }
}

import 'package:flutter/material.dart';
import 'package:pumwani/pages/obhistory.dart';

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
          leading: Builder(
            builder: (context) => IconButton(
             icon: const Icon(Icons.menu,
          color: Colors.black,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer(); 
          },
          ),
        ),
        ),
        drawer: Drawer(
          child:ListView(
            padding: EdgeInsets.zero,
             children: <Widget>[
              Container(height: 100,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white70, Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
       child: const Center(
        child: Text(
                'Sidebar Content',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
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
            child: Column(
                children: [
                 Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search number',
                      hintStyle: const TextStyle(color: Colors.black),
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed:(){
             Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) =>
                Obhistory(currentPage:1, totalPages: 3,)),
              );
                  },
                  child: const Text('Ob History'),
                   ),               
        ]
        ),
                    ),
        ]
        ),
        );
                    
                  
                  
                
                
            
             
             
          
         
      
        
      
  }
}

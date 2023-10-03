import 'package:flutter/material.dart';
import 'package:police_app_dashboard_ui_tutorial/screens/dashboard/widgets/item_news_feed.dart';
import 'package:police_app_dashboard_ui_tutorial/screens/dashboard/widgets/item_service.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Image.asset('assets/images/menu.png', color: Colors.white),
        ),
        title: const Text('Police App', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white, size: 30),
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 100, left: 15, right: 15, bottom: 30),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.white,
                          letterSpacing: 1
                        ),
                        children: const [
                          TextSpan(text: 'Hi, '),
                          TextSpan(text: 'Ahad!', style: TextStyle(fontWeight: FontWeight.bold))
                        ]
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white70, width: 2),
                        shape: BoxShape.circle
                      ),
                      child: const CircleAvatar(
                        radius: 30,
                        foregroundImage: AssetImage('assets/images/profile.JPG')
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Text('Do you have an emergency?', style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                ),),
                const SizedBox(height: 5),
                const Text(
                  'Now you can contact us in case of any emergency. You can call or message just by pressing buttons below.',
                  style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300, height: 1.5),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.all(15)
                        ),
                        label: const Text('Call Now'),
                        icon: const Icon(Icons.call),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.all(15)
                        ),
                        label: const Text('Send SMS'),
                        icon: const Icon(Icons.message),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 10),
              children: [
                ListTile(
                  title: Text('Our Services', style: Theme.of(context).textTheme.titleLarge,),
                ),
                SizedBox(
                  height: 150,
                  child: ListView(
                    padding: const EdgeInsets.only(top: 5, bottom: 10, left: 5, right: 5),
                    scrollDirection: Axis.horizontal,
                    children: const [
                      ItemService(title: 'Online\nFIR', image: 'assets/images/fir.png'),
                      ItemService(title: 'Traffic\nAdvisory', image: 'assets/images/traffic.png'),
                      ItemService(title: 'Challan\nPayment', image: 'assets/images/challan.png'),
                      ItemService(title: 'Driving\nLicense', image: 'assets/images/license.png'),
                      ItemService(title: 'Route\nPlanner', image: 'assets/images/route.png'),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                ListTile(
                  title: Text('News Feed', style: Theme.of(context).textTheme.titleLarge),
                ),
                const Column(
                  children: [
                    ItemNewsFeed(title: 'Lahore Police Conduct Search & Sweep Operations in City', image: 'assets/images/news1.jpg'),
                    ItemNewsFeed(title: "Met Police IT security breach could do 'incalculable damage in the wrong hands'", image: 'assets/images/news2.jpg'),
                  ],
                )
              ],
            ),
          )
        ]
      ),
    );
  }
}

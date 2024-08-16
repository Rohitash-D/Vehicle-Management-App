import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vehicle_management_app/core/config/theme/app_colors.dart';
import 'package:intl/intl.dart';
import 'package:vehicle_management_app/presentation/widgets/homepagecards.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  String getCurrentDateTime() {
    DateTime now = DateTime.now();
    String formattedDateTime = DateFormat('HH:mm').format(now);
    String dayOfWeek = DateFormat('EEEE').format(now);
    formattedDateTime = '$dayOfWeek  $formattedDateTime';
    return formattedDateTime.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkgrey,
      extendBodyBehindAppBar: true,
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          title: Text(getCurrentDateTime()),
          automaticallyImplyLeading: false,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
            const SizedBox(
              width: 10,
            ),
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(50),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: AppColors.darktext,
        currentIndex: 1,
        iconSize: 30,
        backgroundColor: AppColors.lightpurple,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.document_scanner,
            ),
            label: 'History',
          ),
        ],
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.primary,
                    AppColors.lightpurple,
                  ],
                ),
              ),
              padding: const EdgeInsets.only(top: 100),
              child: Lottie.asset('assets/animations/homepage_animation.json'),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.lightbackground,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.55,
              width: double.infinity,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                  crossAxisCount: 2,
                ),
                padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                children: [
                  HomeCard(
                    icon: const Icon(Icons.car_rental, size: 50),
                    title: "Maintenance",
                  ),
                  HomeCard(
                    icon: const Icon(Icons.car_repair, size: 50),
                    title: "Repair",
                  ),
                  HomeCard(
                    icon: const Icon(Icons.car_rental, size: 50),
                    title: "Maintenance",
                  ),
                  HomeCard(
                    icon: const Icon(Icons.car_repair, size: 50),
                    title: "Repair",
                  ),
                  HomeCard(
                    icon: const Icon(Icons.car_rental, size: 50),
                    title: "Maintenance",
                  ),
                  HomeCard(
                    icon: const Icon(Icons.car_repair, size: 50),
                    title: "Repair",
                  ),
                  HomeCard(
                    icon: const Icon(Icons.car_rental, size: 50),
                    title: "Maintenance",
                  ),
                  HomeCard(
                    icon: const Icon(Icons.car_repair, size: 50),
                    title: "Repair",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

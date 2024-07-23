import 'package:flutter/material.dart';
import 'package:value_vertex/Components/HomeScreen/room_card.dart';
import 'package:value_vertex/Models/models.dart';
import 'package:value_vertex/utils/colors.dart';
import 'package:value_vertex/utils/images.dart';

class HomeScreen extends StatelessWidget {
  final List<Room> rooms;
  const HomeScreen({super.key, required this.rooms});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Container(
        padding: const EdgeInsets.only(top: 45),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                  const Spacer(flex: 6),
                  const Text(
                    "Ajeesh Rawal",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(flex: 5),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 74, 75, 76),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.notifications_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Container(
                      height: 210,
                      width: 170,
                      decoration: BoxDecoration(
                        // color: secondaryColor,
                        border: Border.all(
                          color: primaryColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, left: 15, bottom: 20),
                            child: Row(
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "24°C",
                                      style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "Cloudy",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "chances of rain",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 8,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  weather,
                                  width: 90,
                                  height: 90,
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15, right: 20),
                            child: Text(
                              "Kiet Group Of\nInstitutions",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 140,
                            height: 60,
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              border: Border.all(
                                color: primaryColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Force",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 164, 196, 212),
                                        fontSize: 12),
                                  ),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        force,
                                        width: 20,
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        width: 7,
                                      ),
                                      const Text(
                                        "7Km/Hr",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: 140,
                            height: 60,
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              border: Border.all(
                                color: primaryColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Humidity",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 164, 196, 212),
                                        fontSize: 12),
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.water_drop_outlined,
                                        size: 20,
                                        color: primaryColor,
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Text(
                                        "42%",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: 140,
                            height: 60,
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              border: Border.all(
                                color: primaryColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Chance of Rain",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 164, 196, 212),
                                        fontSize: 12),
                                  ),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        rainy,
                                        width: 20,
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        width: 7,
                                      ),
                                      const Text(
                                        "87%",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      "+ Add New Room",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              // Fixing Expanded usage with padding between cards
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ListView.separated(
                    itemCount: rooms.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 20), // Padding between cards
                    itemBuilder: (context, index) {
                      final room = rooms[index];
                      return RoomCard(
                          room: room); // Pass the room to the RoomCard widget
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

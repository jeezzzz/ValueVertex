import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:value_vertex/Components/RoomScreen/device_card.dart'; // Import your DeviceCard
import 'package:value_vertex/Models/models.dart';
import 'package:value_vertex/utils/colors.dart';
import 'package:value_vertex/utils/images.dart';

class RoomDetailScreen extends StatelessWidget {
  final Room room;

  const RoomDetailScreen({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    var image;
    if (room.type == "livingroom") {
      image = livingroom;
    }
    if (room.type == "bedroom") {
      image = bedroom;
    }
    if (room.type == "bathroom") {
      image = bathroom;
    }
    if (room.type == "kitchen") {
      image = kitchen;
    }

    return Scaffold(
      backgroundColor: secondaryColor,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 8),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(61, 0, 0, 0),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  room.name,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                ),
                const Spacer(),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(61, 0, 0, 0),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.more_vert_outlined,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0, // Space below the container
            left: 0, // No margin from the left
            right: 0, // No margin from the right
            child: GlassmorphicContainer(
              width: MediaQuery.of(context).size.width, // Full width
              height: 400,
              borderRadius: 20,
              border: 2,
              blur: 10,
              borderGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.7),
                ],
              ),
              linearGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.5),
                ],
                stops: const [0.1, 1],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0), // Horizontal padding
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                          left: 20,
                          top: 30), // Padding from left, bottom, and top
                      child: Text(
                        'Devices',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8.0,
                          mainAxisSpacing: 8.0,
                        ),
                        itemCount: room.devices.length, // Number of devices
                        itemBuilder: (context, index) {
                          final device = room.devices[index];
                          return Padding(
                            padding: const EdgeInsets.only(
                              left: 3,
                              right: 3,
                              bottom: 3,
                            ), // Reduced margin around each DeviceCard
                            child: DeviceCard(
                              device: device, // Pass the complete device object
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

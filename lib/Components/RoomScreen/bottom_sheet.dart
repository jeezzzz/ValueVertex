import 'package:flutter/material.dart';
import 'package:value_vertex/Components/RoomScreen/device_card.dart';
import 'package:value_vertex/Models/models.dart'; // Import your Device model
import 'package:value_vertex/utils/colors.dart';

class PersistentDeviceBottomSheet extends StatelessWidget {
  final List<Device> devices;

  const PersistentDeviceBottomSheet({Key? key, required this.devices})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: secondaryColor,
      child: ListView(
        children: devices.map((device) => DeviceCard(device: device)).toList(),
      ),
    );
  }
}

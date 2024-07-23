import 'package:flutter/material.dart';
import 'package:value_vertex/Components/RoomScreen/dialog_boxes.dart';
import 'package:value_vertex/Models/models.dart';
import 'package:value_vertex/utils/colors.dart';

class DeviceCard extends StatefulWidget {
  final Device device;

  const DeviceCard({
    Key? key,
    required this.device,
  }) : super(key: key);

  @override
  State<DeviceCard> createState() => _DeviceCardState();
}

class _DeviceCardState extends State<DeviceCard> {
  bool _isPrimary = true;

  void _showDeviceDialog(BuildContext context) {
    switch (widget.device.type) {
      case "light":
        showDialog(
          context: context,
          builder: (context) => DialogBoxes.lightDialog(context, widget.device),
        );
        break;
      case "fan":
        showDialog(
          context: context,
          builder: (context) => DialogBoxes.fanDialog(context, widget.device),
        );
        break;
      case "AC":
        showDialog(
          context: context,
          builder: (context) => DialogBoxes.acDialog(context, widget.device),
        );
        break;
      case "tv":
        showDialog(
          context: context,
          builder: (context) => DialogBoxes.tvDialog(context, widget.device),
        );
        break;
      case "oven":
        showDialog(
          context: context,
          builder: (context) => DialogBoxes.ovenDialog(context, widget.device),
        );
        break;
      case "refrigerator":
        showDialog(
          context: context,
          builder: (context) =>
              DialogBoxes.refrigeratorDialog(context, widget.device),
        );
        break;
      // Add cases for other device types
      default:
        // Handle other device types or default case
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    String value;
    final status = widget.device.status;

    if (widget.device.type == "light") {
      value = "${status['brightness'] as int? ?? 0}%";
    } else if (widget.device.type == "fan") {
      value = "${status['speed'] as int? ?? 0}";
    } else if (widget.device.type == "tv") {
      value = "${status['volume'] as int? ?? 0}";
    } else if (widget.device.type == "oven") {
      value = status['mode'] ?? '';
    } else if (widget.device.type == "AC") {
      value = "${status['temperature'] as int? ?? 0}°C";
    } else if (widget.device.type == "refrigerator") {
      value = "${status['temperature'] as int? ?? 0}°C";
    } else {
      value = 'Status';
    }

    return GestureDetector(
      onTap: () => _showDeviceDialog(context),
      child: Container(
        width: 160,
        height: 150,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Row(
                children: [
                  Text(
                    value,
                    style: TextStyle(color: primaryColor, fontSize: 25),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isPrimary = !_isPrimary; // Toggle the state
                      });
                    },
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: _isPrimary ? primaryColor : secondaryColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.wb_sunny_outlined,
                        color: _isPrimary ? Colors.black : primaryColor,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                widget.device.name,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                widget.device.type,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

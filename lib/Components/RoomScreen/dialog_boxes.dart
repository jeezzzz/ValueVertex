import 'package:flutter/material.dart';
import 'package:value_vertex/Models/models.dart';
import 'package:value_vertex/utils/colors.dart';

class DialogBoxes {
  static Widget baseDialog(
      BuildContext context, Device device, Widget content) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      backgroundColor: secondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              device.name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            content,
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Close',
                      style: TextStyle(color: primaryColor)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget lightDialog(BuildContext context, Device device) {
    int brightness = device.status['brightness'] as int? ?? 0;
    bool isOn = device.status['isOn'] as bool? ?? false;

    return baseDialog(
      context,
      device,
      StatefulBuilder(
        builder: (context, setState) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SwitchListTile(
                title:
                    const Text('On/Off', style: TextStyle(color: Colors.white)),
                value: isOn,
                onChanged: (bool value) {
                  setState(() {
                    isOn = value;
                  });
                },
              ),
              const SizedBox(height: 10),
              Text('Brightness: $brightness%',
                  style: const TextStyle(color: Colors.white)),
              Slider(
                value: brightness.toDouble(),
                min: 0,
                max: 100,
                divisions: 100,
                label: brightness.toString(),
                onChanged: (double value) {
                  setState(() {
                    brightness = value.toInt();
                  });
                },
              ),
            ],
          );
        },
      ),
    );
  }

  static Widget fanDialog(BuildContext context, Device device) {
    int speed = device.status['speed'] as int? ?? 0;

    return baseDialog(
      context,
      device,
      StatefulBuilder(
        builder: (context, setState) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Speed: $speed',
                  style: const TextStyle(color: Colors.white)),
              Slider(
                value: speed.toDouble(),
                min: 0,
                max: 5,
                divisions: 5,
                label: speed.toString(),
                onChanged: (double value) {
                  setState(() {
                    speed = value.toInt();
                  });
                },
              ),
            ],
          );
        },
      ),
    );
  }

  static Widget acDialog(BuildContext context, Device device) {
    int temperature = device.status['temperature'] as int? ?? 0;

    return baseDialog(
      context,
      device,
      StatefulBuilder(
        builder: (context, setState) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Temperature: $temperature°C',
                  style: const TextStyle(color: Colors.white)),
              Slider(
                value: temperature.toDouble(),
                min: 19,
                max: 30,
                divisions: 11,
                label: temperature.toString(),
                onChanged: (double value) {
                  setState(() {
                    temperature = value.toInt();
                  });
                },
              ),
            ],
          );
        },
      ),
    );
  }

  static Widget ovenDialog(BuildContext context, Device device) {
    int initialTemperature = device.status['temperature'] as int? ?? 0;
    // Clamp the initial temperature to be within the slider's range
    int temperature = initialTemperature.clamp(40, 200);

    return baseDialog(
      context,
      device,
      StatefulBuilder(
        builder: (context, setState) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Temperature: $temperature°C',
                  style: const TextStyle(color: Colors.white)),
              Slider(
                value: temperature.toDouble(),
                min: 40,
                max: 200,
                divisions: 160,
                label: temperature.toString(),
                onChanged: (double value) {
                  setState(() {
                    temperature = value.toInt();
                  });
                },
              ),
            ],
          );
        },
      ),
    );
  }

  static Widget tvDialog(BuildContext context, Device device) {
    int volume = device.status['volume'] as int? ?? 0;

    return baseDialog(
      context,
      device,
      StatefulBuilder(
        builder: (context, setState) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Volume: $volume',
                  style: const TextStyle(color: Colors.white)),
              Slider(
                value: volume.toDouble(),
                min: 0,
                max: 100,
                divisions: 100,
                label: volume.toString(),
                onChanged: (double value) {
                  setState(() {
                    volume = value.toInt();
                  });
                },
              ),
            ],
          );
        },
      ),
    );
  }

  static Widget refrigeratorDialog(BuildContext context, Device device) {
    int temperature = device.status['temperature'] as int? ?? 0;

    return baseDialog(
      context,
      device,
      StatefulBuilder(
        builder: (context, setState) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Temperature: $temperature°C',
                  style: const TextStyle(color: Colors.white)),
              Slider(
                value: temperature.toDouble(),
                min: -10,
                max: 10,
                divisions: 20,
                label: temperature.toString(),
                onChanged: (double value) {
                  setState(() {
                    temperature = value.toInt();
                  });
                },
              ),
            ],
          );
        },
      ),
    );
  }
}

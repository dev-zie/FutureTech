import 'package:flutter/material.dart';
import 'package:future_tech/core/widgets/device_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Future Tech')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Text(
              'Today: ${now.day}/${now.month}/${now.year}',
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  DeviceCard(
                    deviceName: 'Smart Light',
                    isOn: false,
                    icon: Icons.light,
                  ),
                  DeviceCard(
                    deviceName: 'Air Conditioner',
                    isOn: false,
                    icon: Icons.cloud,
                  ),
                  DeviceCard(
                    deviceName: 'Smart TV',
                    isOn: false,
                    icon: Icons.tv,
                  ),
                  DeviceCard(
                    deviceName: 'Smart Door',
                    isOn: false,
                    icon: Icons.door_back_door,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

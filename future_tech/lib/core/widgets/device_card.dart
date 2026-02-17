import 'package:flutter/material.dart';

class DeviceCard extends StatefulWidget {
  DeviceCard({
    super.key,
    required this.deviceName,
    required this.isOn,
    required this.icon,
  });

  final String deviceName;
  bool isOn;
  final IconData icon;

  @override
  State<DeviceCard> createState() => _DeviceCardState();
}

class _DeviceCardState extends State<DeviceCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(
                widget.icon,
                size: 100,
                color: widget.isOn ? Colors.green : Colors.red,
              ),
              Text(widget.deviceName),
              ElevatedButton(
                onPressed: () {
                  if (widget.isOn) {
                    setState(() {
                      widget.isOn = !widget.isOn;
                    });
                  } else {
                    setState(() {
                      widget.isOn = !widget.isOn;
                    });
                  }
                },
                child: widget.isOn ? Text('OFF') : Text('ON'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

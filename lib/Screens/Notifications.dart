import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool _receiveNotifications = true; // Initial state for the switch

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: SwitchListTile(
        title: const Text('Receive Notifications'),
        value: _receiveNotifications,
        onChanged: (bool value) {
          setState(() {
            _receiveNotifications = value; // Update the state
          });

          // Handle notification toggle logic here
          if (value) {
            // Logic for enabling notifications
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Notifications enabled')),
            );
          } else {
            // Logic for disabling notifications
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Notifications disabled')),
            );
          }
        },
      ),
    );
  }
}

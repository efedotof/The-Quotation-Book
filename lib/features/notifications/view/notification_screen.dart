import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:the_quotation_book/untils/push/push_repository.dart';
@RoutePage()
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
 String _selectedType = 'saved';
  TimeOfDay? _selectedTime;

  final PushRepository pushRepository = PushRepository();

  @override
  void initState() {
    super.initState();
    pushRepository.init();
  }

  void _scheduleNotification() {
    if (_selectedTime != null) {
      final now = DateTime.now();
      final scheduledTime = DateTime(
        now.year,
        now.month,
        now.day,
        _selectedTime!.hour,
        _selectedTime!.minute,
      );

      pushRepository.scheduleNotification(
        scheduledTime,
        'Scheduled Quote',
        'Here is a quote from $_selectedType.',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule Notifications'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Select Quote Type:', style: TextStyle(fontSize: 18)),
            DropdownButton<String>(
              value: _selectedType,
              items: ['saved', 'selected', 'all'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedType = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            Text('Select Time to Receive Notification:', style: TextStyle(fontSize: 18)),
            ElevatedButton(
              onPressed: () async {
                final TimeOfDay? picked = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (picked != null && picked != _selectedTime) {
                  setState(() {
                    _selectedTime = picked;
                  });
                }
              },
              child: Text(_selectedTime != null
                  ? 'Time: ${_selectedTime!.format(context)}'
                  : 'Pick a time'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _scheduleNotification,
              child: const Text('Schedule Notification'),
            ),
          ],
        ),
      ),
    );
  }
}
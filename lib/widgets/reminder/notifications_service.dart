import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class NotificationService {
  NotificationService(BuildContext context) {
    AwesomeNotifications().initialize(
      'resourceKey',
      [
        NotificationChannel(
          channelKey: 'water_reminder_channel',
          channelName: 'Water Reminder Notifications',
          channelDescription: 'Channel for water reminder notifications',
          defaultColor: Color(0xFF9D50B8),
          ledColor: Colors.white,
        )
      ],
    );

    // Listen to notification actions
    AwesomeNotifications().createdStream.listen((receivedNotification) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text('Your reminder has been scheduled.'),
  ));
});
  }

  void createWaterReminderNotification(DateTime pickedSchedule) {
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 10, // Use a unique ID
        channelKey: 'water_reminder_channel',
        title: 'Time to Drink Water!',
        body: 'Stay hydrated! It’s time for your water reminder.',
        notificationLayout: NotificationLayout.Default,
      ),
      schedule: NotificationCalendar(
        year: pickedSchedule.year,
        month: pickedSchedule.month,
        day: pickedSchedule.day,
        hour: pickedSchedule.hour,
        minute: pickedSchedule.minute,
        second: 0,
        millisecond: 0,
        repeats: true,
      ),
    );
  }
}

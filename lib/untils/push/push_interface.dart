
abstract interface class PushInterface {
  Future<void> init() async {}
  Future<void> scheduleNotification(DateTime scheduledTime, String title, String body) async {}
  Future<void> cancelAllNotifications() async {}
}
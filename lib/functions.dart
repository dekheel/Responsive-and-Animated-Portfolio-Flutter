import 'package:url_launcher/url_launcher.dart';

class MyFunctions {
  static String getMyAge() {
    DateTime today = DateTime.now();
    DateTime myBirthDay = DateTime(1989, 11, 21);
    Duration age = today.difference(myBirthDay);
    return (age.inDays ~/ 365).toString();
  }

  static Future<void> launchingUrl(String url) async {
    await launchUrl(Uri.parse(url));
  }
}

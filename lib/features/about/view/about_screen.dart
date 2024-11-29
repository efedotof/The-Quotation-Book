import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:the_quotation_book/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(S.of(context).aboutTheApp),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).quotation,
              style:  TextStyle(
                color: Theme.of(context).textTheme.labelLarge!.color,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
             Text(
              S.of(context).theQuoteBookApplicationAllowsYouToSaveAndFind +
              S.of(context).keepInTouchWithUsThroughOurSocialNetworksAnd,
              style:  TextStyle(
                 color: Theme.of(context).textTheme.labelLarge!.color,
                fontSize: 16),
            ),
            const SizedBox(height: 24),
            Text(
              S.of(context).ourResources,
              style:  TextStyle(
                 color: Theme.of(context).textTheme.labelLarge!.color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ListTile(
              leading: const Icon(Icons.telegram),
              title:  Text(S.of(context).telegramChannel,
              style: TextStyle(
                 color: Theme.of(context).textTheme.labelLarge!.color,
              ),),
              onTap: () {
                _launchURL('https://t.me/flutterneste');
              },
            ),
            ListTile(
              leading: const Icon(Icons.group),
              title:  Text(S.of(context).vkCommunity,
              style: TextStyle(
                 color: Theme.of(context).textTheme.labelLarge!.color,
              ),),
              onTap: () {
                _launchURL('https://vk.com/club227465963');
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_library),
              title:  Text(S.of(context).youtubeChannel,
              style: TextStyle(
                 color: Theme.of(context).textTheme.labelLarge!.color,
              ),),
              onTap: () {
                _launchURL('https://www.youtube.com/@efedotov');
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_library),
              title:  Text(S.of(context).rutubeChannel,
              style: TextStyle(
                 color: Theme.of(context).textTheme.labelLarge!.color,
              ),),
              onTap: () {
                _launchURL('https://rutube.ru/channel/44444777/');
              },
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String urls) async {
    final Uri url = Uri.parse(urls);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}

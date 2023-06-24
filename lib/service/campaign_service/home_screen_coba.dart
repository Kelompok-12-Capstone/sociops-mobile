import 'package:flutter/material.dart';
import '../../model/model_campaign.dart';
import 'campaign_service.dart';


class DashboardScreen extends StatelessWidget {
  final CampaignService campaignService = CampaignService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Campaign Screen'),
      ),
      body: FutureBuilder<News>(
        future: campaignService.getCampaignData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Failed to load campaign data ${snapshot.error}'),
            );
          } else {
            final news = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.all(16),
              child: SafeArea(
                child: Column(
                  children: news.data.map((datum) {
                    return ListTile(
                      title: Text(datum.title),
                      subtitle: Text(datum.organizer.name),
                    );
                  }).toList(),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

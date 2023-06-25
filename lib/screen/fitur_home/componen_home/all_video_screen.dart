import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../model/model_campaign.dart';
import '../../../service/campaign_service/campaign_service.dart';

class AllVideoScreen extends StatefulWidget {
  const AllVideoScreen({Key? key}) : super(key: key);

  @override
  State<AllVideoScreen> createState() => _AllVideoScreenState();
}

class _AllVideoScreenState extends State<AllVideoScreen> {
  List<VideoPlayerController?> _controllers = [];
  List<String> videoUrls = [];

  final CampaignService campaignService = CampaignService();

  @override
  void dispose() {
    super.dispose();
    for (var controller in _controllers) {
      controller?.dispose();
    }
  }

  @override
  void initState() {
    super.initState();
    campaignService.getCampaignData().then((campaign) {
      if (campaign.data.length >= 4) {
        setState(() {
          videoUrls = [
            campaign.data[1].video!,
            campaign.data[2].video!,
            campaign.data[3].video!,
            campaign.data[4].video!,
          ];
          _controllers = videoUrls
              .map((videoUrl) => VideoPlayerController.network(videoUrl))
              .toList();

          Future.wait(
            _controllers.map((controller) => controller!.initialize()),
          ).then((_) {
            setState(() {});
          });
        });
      }
    });
  }

  void _togglePlayPause(int index) {
    if (_controllers[index]!.value.isPlaying) {
      _controllers[index]!.pause();
    } else {
      _controllers[index]!.play();
    }
  }

  Icon _getPlayPauseIcon(int index) {
    return _controllers[index]!.value.isPlaying == true
        ? Icon(Icons.pause)
        : Icon(Icons.play_arrow);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Video Promosi',
            style: TextStyle(fontFamily: 'RobotoMono', color: Colors.black),
          ),
          backgroundColor: Colors.white,
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
              if (news.data.isEmpty) {
                return Center(
                  child: Text('No campaign data available.'),
                );
              } else {
                final datum1 = news.data[1]; // Ambil data dengan indeks ke-0
                return Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: GridView.builder(
                    itemCount: videoUrls.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    itemBuilder: (context, index) {
                      final videoController = _controllers[index];
                      final datum = news.data[
                          index]; // Menggunakan indeks yang benar untuk mendapatkan data

                      return GestureDetector(
                        onTap: () {
                          _togglePlayPause(index);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[300],
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              AspectRatio(
                                aspectRatio: videoController!.value.aspectRatio,
                                child: VideoPlayer(videoController),
                              ),
                              Positioned(
                                bottom: 80,
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      32,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.3),
      
                                              shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    color: Colors.white,
                                    onPressed: () => _togglePlayPause(index),
                                    icon: _getPlayPauseIcon(index),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 8,
                                left: 16,
                                right: 16,
                                child: Text(
                                  datum.hashtag,
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              }
            }
          },
        ));
  }
}

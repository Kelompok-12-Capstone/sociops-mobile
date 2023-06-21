import 'package:flutter/material.dart';

import '../../model/model_campaign.dart';
import 'home_service.dart';

class MyWidget extends StatelessWidget {
  final EventService apiService = EventService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<EventModel>>(
        future: apiService.getEvents(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // Tampilkan data event yang diperoleh dari API
            final events = snapshot.data;
            return ListView.builder(
              itemCount: events!.length,
              itemBuilder: (context, index) {
                final event = events[index];
                return ListTile(
                  title: Text(event.title),
                  subtitle: Text(event.description),
                  // Tambahkan tampilan lainnya sesuai kebutuhan
                );
              },
            );
          } else if (snapshot.hasError) {
            // Tangani error jika terjadi
            return Text('Error: ${snapshot.error}');
          }

          // Tampilkan indikator loading selama proses fetch data
          return CircularProgressIndicator();
        },
      ),
    );
  }
}

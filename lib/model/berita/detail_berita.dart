import 'package:flutter/material.dart';
import 'package:sociops/screen/fitur_organization/profile.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

import 'berita_service.dart';
import 'model_berita.dart';

class Baca extends StatelessWidget {
  final Datum data;
  final int selectedId;

  const Baca({
    Key? key,
    required this.data,
    required this.selectedId,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          'Berita Terbaru',
          style: Styles.organizerTextStyle,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0XFF444CE7),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            FutureBuilder<NewsResponse>(
              builder: (ctx, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        '${snapshot.error} occurred',
                        style: const TextStyle(fontSize: 18),
                      ),
                    );
                  } else if (snapshot.hasData) {
                    final data = snapshot.data!;
                    final filteredData = data.data.firstWhere(
                      (datum) => datum.id == selectedId,
                    );
                    if (filteredData != null) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: GestureDetector(
                          onTap: () {
                            // Handle onTap action here
                          },
                          child: CustomFollowButton(data: filteredData),
                        ),
                      );
                    } else {
                      return const Center(
                        child: Text('Data not found.'),
                      );
                    }
                  }
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              future: NewsService().fetchNews(),
              initialData: NewsResponse(data: [], message: '', status: false),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryBox extends StatelessWidget {
  final String text;
  final Color color;

  const CategoryBox({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.arrowColor,
          width: 1.0,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: AppColors.arrowColor,
          ),
        ),
      ),
    );
  }
}

class CustomFollowButton extends StatelessWidget {
  final Datum data;

  const CustomFollowButton({super.key, required this.data});

  String _formatCreatedAt(DateTime createdAt) {
    final now = DateTime.now();
    final difference = now.difference(createdAt);

    if (difference.inDays > 0) {
      return '${difference.inDays} hari yang lalu';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} jam yang lalu';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} menit yang lalu';
    } else {
      return 'Baru saja';
    }
  }

  @override
  Widget build(BuildContext context) {
    String formattedTitle = this
        .data
        .title
        .toString()
        .replaceFirst('Title.', '')
        .replaceAll('_', ' ');
    String formattedAuthor = this
        .data
        .author
        .toString()
        .replaceFirst('Author.', '')
        .replaceAll('_', ' ');
    String formattedCreatedAt = _formatCreatedAt(this.data.createdAt);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$formattedTitle',
              style: Styles.result4,
            ),
            const SizedBox(height: 8),
            Text(
              '$formattedAuthor',
              style: Styles.result5,
            ),
            const SizedBox(height: 8),
            Text(
              '$formattedCreatedAt',
              style: Styles.result6,
            ),
            const SizedBox(
              height: 10,
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
              child: Container(),
            ),
            const SizedBox(height: 16),
            Container(
              width: 500,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: NetworkImage(data.photoUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              data.description.toString(),
              style: Styles.resultTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}

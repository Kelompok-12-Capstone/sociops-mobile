import 'package:flutter/material.dart';
import 'package:sociops/model/berita/detail_berita.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'berita_service.dart';
import 'model_berita.dart';

class Berita extends StatefulWidget {
  const Berita({super.key});

  @override
  _BeritaState createState() => _BeritaState();
}

class _BeritaState extends State<Berita> {
  Datum? selectedData;
  List<Datum> searchResults = [];
  String searchQuery = '';

  void _showDetails(Datum data) {
    setState(() {
      selectedData = data;
    });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Baca(data: data, selectedId: data.id),
      ),
    );
  }

  List<Datum> _filterData(List<Datum> data) {
    if (searchQuery.isEmpty) {
      return data;
    }

    final lowercaseQuery = searchQuery.toLowerCase();

    return data.where((datum) {
      final lowercaseTitle = datum.title
          .toString()
          .replaceFirst('Title.', '')
          .replaceAll('_', ' ')
          .toLowerCase();
      return lowercaseTitle.contains(lowercaseQuery);
    }).toList();
  }

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
        leading: const BackButton(
          color: Color(0XFF444CE7),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 48,
                        width: 350,
                        decoration: BoxDecoration(
                          color: const Color(0XFFF9FAFB),
                          borderRadius: BorderRadius.circular(56),
                        ),
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              searchQuery = value;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: 'Cari',
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(23),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                FutureBuilder(
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
                        final data = snapshot.data as NewsResponse;
                        final List<Datum> displayedData =
                            searchResults.isNotEmpty
                                ? searchResults
                                : data.data;

                        return SizedBox(
                          height: 500,
                          child: ListView.builder(
                            itemCount: displayedData.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final datum = displayedData[index];
                              if (index == displayedData.length - 1) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 32, left: 16, right: 16),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: CustomFollowButton(
                                      data: datum,
                                      onPressed: () => _showDetails(datum),
                                    ),
                                  ),
                                );
                              } else {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 16, left: 5, right: 5),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: CustomFollowButton(
                                      data: datum,
                                      onPressed: () => _showDetails(datum),
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                        );
                      }
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  future: NewsService().fetchNews(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryBox extends StatefulWidget {
  final String text;
  final Color color;

  const CategoryBox({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  _CategoryBoxState createState() => _CategoryBoxState();
}

class _CategoryBoxState extends State<CategoryBox> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        width: 80,
        decoration: BoxDecoration(
          color: _isSelected ? widget.color : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color.fromARGB(255, 0, 0, 0),
            width: 1.0,
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: _isSelected ? Colors.white : AppColors.arrowColor,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomFollowButton extends StatelessWidget {
  final Datum data;
  final VoidCallback onPressed;

  CustomFollowButton({super.key, required this.data, required this.onPressed});
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
    String formattedTitle =
        data.title.toString().replaceFirst('Title.', '').replaceAll('_', ' ');
    initializeDateFormatting();
    String formattedCreatedAt = _formatCreatedAt(data.createdAt);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.Kotak,
            width: 1.0,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8, right: 16),
              child: SizedBox(
                width: 100,
                height: 100,
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                    side: BorderSide(
                      width: 1,
                      color: AppColors.Kotak,
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      print(data.photoUrl);
                    },
                    child: Image.network(
                      data.photoUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Container(
              width: 256,
              height: 140,
              margin: const EdgeInsets.only(top: 12),
              child: SizedBox(
                width: 266,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      formattedCreatedAt,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: Styles.result8,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      formattedTitle,
                      style: Styles.result9,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      data.description.toString(),
                      style: Styles.result10,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: GestureDetector(
                        onTap: onPressed,
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: AppColors.Button,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 8),
                              Text(
                                'Baca Selengkapnya',
                                style: TextStyle(
                                  color: AppColors.arrowColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

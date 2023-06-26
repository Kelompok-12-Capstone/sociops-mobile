import 'package:flutter/material.dart';
import 'package:sociops/model/berita/detail_berita.dart';
import 'package:sociops/model/berita/model_berita.dart';
import 'package:sociops/service/news_services_api.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';
import 'package:intl/date_symbol_data_local.dart';

class Berita extends StatefulWidget {
  const Berita();

  @override
  _BeritaState createState() => _BeritaState();
}

class _BeritaState extends State<Berita> {
  Datum? selectedData;
  List<Datum> searchResults = [];
  List<Datum> allData = [];
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
          padding: const EdgeInsets.only(left: 8, top: 16),
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
                            searchResults = _filterData(allData);
                          });
                          // print('Search query: $value');
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
                      final data = snapshot.data as NewsResponse?;
                      if (data != null) {
                        allData = data.data;
                      }
                      searchResults = _filterData(allData);
                      if (searchResults.isEmpty) {
                        return Container(
                          alignment: Alignment.center,
                          child: Image.asset('assets/search.png'),
                        );
                      } else {
                        return SizedBox(
                          height: 768,
                          child: ListView.builder(
                            itemCount: searchResults.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final datum = searchResults[index];
                              if (index == searchResults.length - 1) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 32, left: 16, right: 16),
                                  child: GestureDetector(
                                    onTap: () => _showDetails(datum),
                                    child: CustomFollowButton(data: datum),
                                  ),
                                );
                              } else {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 16, left: 5, right: 5),
                                  child: GestureDetector(
                                    onTap: () => _showDetails(datum),
                                    child: CustomFollowButton(data: datum),
                                  ),
                                );
                              }
                            },
                          ),
                        );
                      }
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

  CustomFollowButton({required this.data});

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
          color: Colors.white,
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
                child: Stack(
                  children: [
                    Card(
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
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 0, top: 0),
                            child: SizedBox(
                              width: 94,
                              height: 94,
                              child: Image.network(
                                data.photoUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 5,
                            bottom: 8,
                            child: Container(
                              width: 83,
                              height: 22,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32.0),
                                color: ColorStyle().buttonColor,
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  data.categoryName.toString(),
                                  textAlign: TextAlign.center,
                                  style: Styles.Result,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 12),
            Container(
              width: 256,
              height: 150,
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
                      textAlign: TextAlign.left,
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
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Baca(data: data, selectedId: data.id),
                            ),
                          );
                        },
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

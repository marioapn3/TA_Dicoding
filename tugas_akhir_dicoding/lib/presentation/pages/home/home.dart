import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tugas_akhir_dicoding/data/dummy_data/popular_destination_data.dart';
import 'package:tugas_akhir_dicoding/data/dummy_data/trending_destination_data.dart';
import 'package:tugas_akhir_dicoding/data/model/popular_destination.dart';
import 'package:tugas_akhir_dicoding/data/model/trending_destination.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/home/homepage.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/home/widgets/popular_card.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/home/widgets/title_view_all.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/home/widgets/trending_card.dart';

final List<String> bannerList = [
  'assets/images/banner-1.png',
  'assets/images/banner-2.png',
  'assets/images/banner-3.png',
];
final List<Widget> imageSliders = bannerList
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Image.asset(item, fit: BoxFit.cover, width: 1000.0),
          ),
        ))
    .toList();

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hey Mario',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            'Where to next?',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const CircleAvatar(
                              foregroundColor: Colors.white,
                              backgroundColor: Color(0xffff9470),
                              child: FaIcon(
                                FontAwesomeIcons.bell,
                                size: 15,
                              ),
                            ),
                          ),
                          gap.w10Gap,
                          InkWell(
                            onTap: () {},
                            child: const CircleAvatar(
                              foregroundColor: Colors.white,
                              backgroundColor: Color(0xffff9470),
                              child: FaIcon(
                                FontAwesomeIcons.message,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  gap.h20Gap,
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search worldwide',
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  gap.h10Gap,
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 3.0,
                      enlargeCenterPage: true,
                    ),
                    items: imageSliders,
                  ),
                  gap.h10Gap,
                  const TitleViewAll(
                    title: "Trending Destinations",
                  ),
                  gap.h10Gap,
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.4,
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return gap.w10Gap;
                      },
                      shrinkWrap: true,
                      itemCount: trendingDestination.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final TrendingDestination trending =
                            trendingDestination[index];
                        return CardTrending(
                          trending: trending,
                        );
                      },
                    ),
                  ),
                  gap.h10Gap,
                  const TitleViewAll(
                    title: "Popular Destinations",
                  ),
                  gap.h10Gap,
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.8,
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return gap.w10Gap;
                      },
                      shrinkWrap: true,
                      itemCount: popularDestination.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final PopularDestination popular =
                            popularDestination[index];
                        return CardPopular(
                          popularDestination: popular,
                        );
                      },
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

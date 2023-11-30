import 'package:flutter/material.dart';
import 'package:tugas_akhir_dicoding/data/dummy_data/popular_destination_data.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/home/homepage.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/home/widgets/popular_card_v2.dart';

class DetailTrending extends StatelessWidget {
  const DetailTrending({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Trending Destination ',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: const CircleAvatar(
                          foregroundColor: Colors.black87,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.notifications_none),
                        ),
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
                  gap.h20Gap,
                  Column(
                    children: [
                      GridView.builder(
                        itemCount: popularDestination.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.63,
                        ),
                        itemBuilder: (context, index) {
                          final popular = popularDestination[index];
                          return Container(
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            child: CardPopularV2(
                              popularDestination: popular,
                            ),
                          );
                        },
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

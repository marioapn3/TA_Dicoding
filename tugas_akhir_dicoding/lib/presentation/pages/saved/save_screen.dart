import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tugas_akhir_dicoding/data/dummy_data/popular_destination_data.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/details/details_popuilar_destination/detail.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/home/homepage.dart';

class Saved extends StatelessWidget {
  const Saved({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Saved Destination ',
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
                    ListView.separated(
                      itemCount: popularDestination.length,
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 10,
                        );
                      },
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final popular = popularDestination[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return DetailDestination(
                                  popularDestination: popular,
                                );
                              },
                            ));
                          },
                          child: Container(
                              margin:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: Colors.black, width: 2)),
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      width: 100,
                                      height: 100,
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(18),
                                          bottomLeft: Radius.circular(18),
                                        ),
                                        child: Image.asset(
                                          popular.image,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        children: [
                                          Text(
                                            popular.name,
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  SvgPicture.asset(
                                                      'assets/icon_svg/map-pin.svg',
                                                      colorFilter:
                                                          const ColorFilter
                                                              .mode(
                                                              Colors.black,
                                                              BlendMode.srcIn)),
                                                  Text(popular.country,
                                                      style: const TextStyle(
                                                          color: Colors.grey)),
                                                ],
                                              ),
                                              Text(
                                                '\$ ${popular.price}',
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xffff9470)),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

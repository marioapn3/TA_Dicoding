// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:tugas_akhir_dicoding/data/model/popular_destination.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/details/detail_destination/detail_destination.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/home/homepage.dart';

// ignore: must_be_immutable
class DetailDestination extends StatefulWidget {
  PopularDestination popularDestination;
  DetailDestination({
    Key? key,
    required this.popularDestination,
  }) : super(key: key);

  @override
  State<DetailDestination> createState() => _DetailDestinationState();
}

class _DetailDestinationState extends State<DetailDestination> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.srcOver,
              ),
              child: Image.asset(
                widget.popularDestination.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.arrow_back_ios),
                            iconSize: 18,
                            color: const Color(0xffff9470),
                            hoverColor: Colors.white12,
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                            icon: isFavorite == true
                                ? const Icon(Icons.favorite)
                                : const Icon(Icons.favorite_border),
                            iconSize: 22,
                            color: Colors.red,
                            hoverColor: Colors.white12,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      widget.popularDestination.name,
                      style: const TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    gap.h10Gap,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icon_svg/map-pin.svg'),
                        gap.w15Gap,
                        Text(widget.popularDestination.country,
                            style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      ],
                    ),
                    gap.h10Gap,
                    Text(
                      widget.popularDestination.shortDesc,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    gap.h25Gap,
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailBookingDestination(
                                        popularDestination:
                                            widget.popularDestination,
                                      )));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffff9470),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        child: const Text(
                          'View Detail',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    gap.h25Gap,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

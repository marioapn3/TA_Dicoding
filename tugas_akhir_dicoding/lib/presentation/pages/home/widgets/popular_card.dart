import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tugas_akhir_dicoding/data/model/popular_destination.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/details/details_popuilar_destination/detail.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/home/homepage.dart';

// ignore: must_be_immutable
class CardPopular extends StatelessWidget {
  PopularDestination popularDestination;
  CardPopular({
    Key? key,
    required this.popularDestination,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailDestination(
                popularDestination: popularDestination,
              ),
            ));
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(2, 2),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  popularDestination.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            gap.h10Gap,
            Text(
              popularDestination.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            gap.h10Gap,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icon_svg/map-pin.svg',
                        colorFilter: const ColorFilter.mode(
                            Colors.black, BlendMode.srcIn)),
                    Text(popularDestination.country,
                        style: const TextStyle(color: Colors.grey)),
                  ],
                ),
                Text(
                  '\$ ${popularDestination.price}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xffff9470)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

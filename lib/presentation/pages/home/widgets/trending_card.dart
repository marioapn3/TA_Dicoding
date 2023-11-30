import 'package:flutter/material.dart';
import 'package:tugas_akhir_dicoding/data/model/trending_destination.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/details/detail_trending_destination/detail_trending.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/home/homepage.dart';

// ignore: must_be_immutable
class CardTrending extends StatelessWidget {
  TrendingDestination trending;
  CardTrending({
    Key? key,
    required this.trending,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DetailTrending()));
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.282,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.282,
              height: MediaQuery.of(context).size.width * 0.282,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(2, 2), // changes position of shadow
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  trending.img,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            gap.h10Gap,
            Text(trending.name)
          ],
        ),
      ),
    );
  }
}

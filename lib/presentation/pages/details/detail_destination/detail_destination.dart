// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:tugas_akhir_dicoding/data/model/popular_destination.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/booking/booking_page_checkout.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/home/homepage.dart';

// ignore: must_be_immutable
class DetailBookingDestination extends StatefulWidget {
  PopularDestination popularDestination;
  DetailBookingDestination({
    Key? key,
    required this.popularDestination,
  }) : super(key: key);

  @override
  State<DetailBookingDestination> createState() =>
      _DetailBookingDestinationState();
}

class _DetailBookingDestinationState extends State<DetailBookingDestination> {
  bool vacationIsOn = false;
  bool temporaryClose = false;
  bool isFavorite = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffff9470),
              foregroundColor: Colors.white,
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookingPageCheckout(
                    popularDestination: widget.popularDestination,
                  ),
                ),
              );
            },
            child: const Text(
              'Book Now',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            child: Image.asset(
                              widget.popularDestination.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                      const Color(0xffff9470).withOpacity(0.5),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: const Icon(Icons.arrow_back_ios),
                                  iconSize: 18,
                                  color: Colors.white,
                                  hoverColor: Colors.white12,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                      const Color(0xffff9470).withOpacity(0.5),
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
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(widget.popularDestination.name,
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                )),
                            const Spacer(),
                            Text(
                              "\$${widget.popularDestination.price}",
                              style: const TextStyle(
                                fontSize: 24,
                                color: Color(0xffff9470),
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                        gap.h15Gap,
                        Row(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const FaIcon(FontAwesomeIcons.locationDot,
                                    size: 20, color: Color(0xffff9470)),
                                gap.w15Gap,
                                Text(
                                  widget.popularDestination.country,
                                  style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Row(
                              children: [
                                FaIcon(FontAwesomeIcons.star,
                                    size: 20, color: Color(0xffff9470)),
                                Text(
                                  "4.8(2.7K)",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                        gap.h15Gap,
                        Text("About ${widget.popularDestination.name}",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            )),
                        gap.h10Gap,
                        Text(
                          widget.popularDestination.description,
                          style: const TextStyle(color: Colors.grey),
                          textAlign: TextAlign.justify,
                        ),
                        gap.h15Gap,
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DetailCustom(
                              title: "Periode",
                              value: "May - Oct",
                              icon: FontAwesomeIcons.calendar,
                            ),
                            DetailCustom(
                              title: "Visitors",
                              value: "1200 Person",
                              icon: FontAwesomeIcons.userGroup,
                            ),
                            DetailCustom(
                              title: "Distance",
                              value: "2500 KM",
                              icon: FontAwesomeIcons.route,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DetailCustom extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  const DetailCustom({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FaIcon(
              icon,
              size: 20,
              color: Colors.black,
            ),
            gap.w10Gap,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  value,
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

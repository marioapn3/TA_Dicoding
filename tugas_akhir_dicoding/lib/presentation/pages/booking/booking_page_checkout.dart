// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tugas_akhir_dicoding/data/model/popular_destination.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/booking/booking_page.dart';

import 'package:tugas_akhir_dicoding/presentation/pages/booking/success_page.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/home/homepage.dart';

// ignore: must_be_immutable
class BookingPageCheckout extends StatefulWidget {
  PopularDestination popularDestination;
  DateTime? focusDay;

  BookingPageCheckout({
    Key? key,
    required this.popularDestination,
    this.focusDay,
  }) : super(key: key);

  @override
  State<BookingPageCheckout> createState() => _BookingPageCheckoutState();
}

TextEditingController _controller = TextEditingController();

class _BookingPageCheckoutState extends State<BookingPageCheckout> {
  int totalTicketPrice = 1;
  int total = 1;
  int price = 1;
  String text = "";
  final DateTime now = DateTime.now();
  DateTime dateTime = DateTime.now();

  //2020-11-23
  @override
  void initState() {
    super.initState();
    price = widget.popularDestination.price;
    _controller.text = "1";
    totalTicketPrice = price * int.parse(_controller.text);
    total = totalTicketPrice + 100;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Row(
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
                          color: const Color(0xff088178),
                          hoverColor: Colors.white12,
                        ),
                      ),
                      const Text(
                        'Checkout',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.9,
                    decoration: const BoxDecoration(
                      color: Color(0xff088178),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.08,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(children: [
                                Expanded(
                                  flex: 1,
                                  child: Image.asset(
                                      'assets/images/VI-booking.png',
                                      fit: BoxFit.fitHeight),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Image.asset(
                                      'assets/images/MC-booking.png',
                                      fit: BoxFit.fitHeight),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Image.asset(
                                      'assets/images/P-booking.png',
                                      fit: BoxFit.fitHeight),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Image.asset(
                                    'assets/images/AE-booking.png',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          gap.h15Gap,
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Card Holder Name",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  const Text(
                                    "Mario Aprilnino Prasetyo",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Divider(
                                    thickness: 1,
                                  ),
                                  const Spacer(),
                                  Text(
                                    "Card Number",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        "8454  5123  8534  1547",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      FaIcon(FontAwesomeIcons.check,
                                          color: Colors.green)
                                    ],
                                  ),
                                  const Divider(
                                    thickness: 1,
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    BookingPage(
                                                  popularDestination:
                                                      widget.popularDestination,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Expiry Date",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey[600],
                                                ),
                                              ),
                                              gap.h15Gap,
                                              Text(
                                                widget.focusDay == null
                                                    ? DateTime.now()
                                                        .toIso8601String()
                                                        .split('T')
                                                        .first
                                                        .toString()
                                                    : widget.focusDay!
                                                        .toIso8601String()
                                                        .split('T')
                                                        .first
                                                        .toString(),
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              gap.h10Gap,
                                              const Divider(
                                                thickness: 1,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      gap.w10Gap,
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Ticket Ammount",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey[600],
                                              ),
                                            ),
                                            TextField(
                                              onChanged: (newValue) {
                                                if (newValue.isNotEmpty) {
                                                  int newTicketAmount =
                                                      int.parse(newValue);
                                                  setState(() {
                                                    totalTicketPrice =
                                                        price * newTicketAmount;
                                                    total =
                                                        totalTicketPrice + 100;
                                                  });
                                                } else {
                                                  setState(() {
                                                    totalTicketPrice = price;
                                                    total =
                                                        totalTicketPrice + 100;
                                                  });
                                                }
                                              },
                                              controller: _controller,
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: const InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 10),
                                              ),
                                              style: const TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          gap.h15Gap,
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Ticket Price",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey[600],
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        // "\$800",
                                        "\$$totalTicketPrice",
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  gap.h10Gap,
                                  Row(
                                    children: [
                                      Text(
                                        "Fee Service",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey[600],
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Spacer(),
                                      const Text(
                                        "\$100",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    thickness: 1,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Total",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey[600],
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        "\$$total",
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          gap.h15Gap,
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // color: Colors.white,
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SuccessPage(),
                                    ));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffff9470),
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.all(17),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text(
                                "Proceed",
                                style: TextStyle(
                                  letterSpacing: 2,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
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

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:app/pages/ticket_view.dart';
import 'package:app/utils/app_info_list.dart';
import 'package:app/pages/hotel_screen.dart';
import '../utils/app_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  children: [
                    const Gap(40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Good Morning', style: Styles.headLineStyle3),
                            const Gap(5),
                            Text('Book Tickets', style: Styles.headLineStyle1),
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage(
                                      "assets/images/1.jpeg"
                                  )
                              )
                          ),
                        )
                      ]
                    ),
                    const Gap(25),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6FD),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      child: Row(
                        children: <Widget>[
                          const Icon(Icons.search),
                          Text('search', style: Styles.headLineStyle4),
                        ],
                      ),
                    ),
                    const Gap(40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Upcoming Flights', style: Styles.headLineStyle2),
                        InkWell(
                          onTap: () {},
                          child: Text('View all', style: Styles.textStyle.copyWith(color: Styles.primaryColor)),
                        )
                      ],
                    )
                  ],
              ),
            ),
            const Gap(15),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left:16),
              child: Row(
                children:  <Widget>[
                  TicketView(),
                  TicketView(),
                  TicketView(),
                  TicketView(),
                  TicketView(),
                ],
              ),
            ),
            const Gap(15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Hotels', style: Styles.headLineStyle2),
                  InkWell(
                    onTap: () {},
                    child: Text('View all', style: Styles.textStyle.copyWith(color: Styles.primaryColor)),
                  )
                ],
              ),
            ),
            const Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left:16),
              child: Row(
                children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel,)).toList(),
              ),
            )
          ],
        )
    );
  }
}

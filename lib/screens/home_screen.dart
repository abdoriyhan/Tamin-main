import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:tamin/bace/res/media.dart';
import 'package:tamin/bace/res/styles/app_styles.dart';
import 'package:tamin/bace/widgets/app_double_text.dart';
import 'package:tamin/bace/widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good Morning",
                              style: AppStyles.headline
                                  .copyWith(fontWeight: FontWeight.w700)),
                          const SizedBox(height: 5),
                          const Text("Book Tickets",
                              style: AppStyles.headline1),
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage(AppMedia.logo))),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD),
                    ),
                    child: const Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          FluentSystemIcons.ic_fluent_search_filled,
                          color: Color(0xFFBFC205),
                        ),
                        Text("Search"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  const AppDoubleText(
                    bigText: "Upcoming Flights",
                    smallText: "View All",
                  ),
                  const SizedBox(height: 20),
                  const TicketView(),
                ],
              ),
            ),
          ],
        ));
  }
}

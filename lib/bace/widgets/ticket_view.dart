import 'package:flutter/material.dart';
import 'package:tamin/bace/res/styles/app_styles.dart';
import 'package:tamin/bace/widgets/app_layoutbuilder_widget.dart';
import 'package:tamin/bace/widgets/big_circle.dart';
import 'package:tamin/bace/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // blue Part of the Ticket
            Container(
              //margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(21))),
              child: Column(
                children: [
                  // Show departure and destination  with Icons first Line
                  Row(
                    children: [
                      Text("NYC",
                          style:
                              AppStyles.headline.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutbuilderWidget(
                              randomDivider: 6,
                            ),
                          ),
                          Center(
                            // this Widget (Transform) is to change the angle of the AirPlane Icon
                            child: Transform.rotate(
                              angle: 1.57,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      Text("LDN",
                          style:
                              AppStyles.headline.copyWith(color: Colors.white)),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  // Show departure and destination names with time
                  Row(
                    children: [
                      Text("New-York ",
                          style:
                              AppStyles.headline.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      Text("8H 30M",
                          style:
                              AppStyles.headline.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      Text("London",
                          style:
                              AppStyles.headline.copyWith(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
            // Circles and Dots
            Container(
                color: AppStyles.ticketOrange,
                child: const Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigCircle(
                      isRight: false,
                    ),
                    // to make Space between the circles
                    Expanded(
                        child: AppLayoutbuilderWidget(
                            randomDivider: 16, width: 6)),
                    BigCircle(
                      isRight: true,
                    ),
                  ],
                )),
            // Orange Part of the Ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(21))),
              child: Column(
                children: [
                  // Show departure and destination  with Icons first Line
                  Row(
                    children: [
                      Text("1 MAY",
                          style:
                              AppStyles.headline.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      Text("08:00 AM",
                          style:
                              AppStyles.headline.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      Text("23",
                          style:
                              AppStyles.headline.copyWith(color: Colors.white)),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  // Show departure and destination names with time
                  Row(
                    children: [
                      Text("Date",
                          style:
                              AppStyles.headline.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      Text("Departuer Time",
                          style:
                              AppStyles.headline.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      Text("Number",
                          style:
                              AppStyles.headline.copyWith(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

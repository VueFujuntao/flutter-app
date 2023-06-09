import 'package:app/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';
import 'package:app/widgets/ticket_container.dart';

class TicketView extends StatefulWidget {
  const TicketView({super.key});

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)), topRight: Radius.circular(AppLayout.getHeight(21)))
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                    Row(
                      children: [
                        Text("NYC", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                        const Spacer(),
                        const TicketContainer(),
                        Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: AppLayout.getHeight(24),
                                child: LayoutBuilder(
                                  builder: (BuildContext context, BoxConstraints constraints) {
                                    return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate((constraints.constrainWidth() / 6).floor(), (index) => const SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                        ),
                                      )),
                                    );
                                  },
                                )
                              ),
                              Center(
                                child: Transform.rotate(
                                  angle: 1.5,
                                  child: const Icon(Icons.local_airport_rounded, color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                        const TicketContainer(),
                        const Spacer(),
                        Text("LDN", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      ]
                    ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text("New-York", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      ),
                      Text("8H 30M", style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text("London", textAlign: TextAlign.end, style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      ),
                    ],
                  ),
                ]
              )
            ),
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: LayoutBuilder(
                          builder: (BuildContext context, BoxConstraints constraints) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                            );
                          },
                        ),
                      )
                  ),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21),
                  )
              ),
              padding: const EdgeInsets.only(left: 16,top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("1 MAY", style: Styles.headLineStyle3.copyWith(color: Colors.white,)),
                          const Gap(5),
                          Text("DATE", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("08:00 AM", style: Styles.headLineStyle3.copyWith(color: Colors.white,)),
                          const Gap(5),
                          Text("Departure time", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("23", style: Styles.headLineStyle3.copyWith(color: Colors.white,)),
                          const Gap(5),
                          Text("Number", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                        ],
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

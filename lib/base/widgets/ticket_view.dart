import 'package:flutter/material.dart';
import 'package:ticket_booking_app/base/widgets/app_layout_builder_widget.dart';
import '../res/styles/app_styles.dart';
import 'big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*0.85,
      height: 179,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppStyles.ticketBlue,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
        ),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "NYC",
                    style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                  // this Expanded is work as horizontal gaps (space between)
                  Expanded(child: Container()),
                  const BigDot(),
                  // for overlapping content we used Stack instead of Container
                  Expanded(child: Stack(
                    children: [
                      const SizedBox(
                        height:24,
                        child: AppLayoutBuilderWidget(randomDivider: 6,),
                      ),
                      Center(
                        child: Transform.rotate(angle: 1.5,
                        child: Icon(Icons.local_airport_rounded, color: Colors.white,)),
                      )
                    ],
                  )),
                  const BigDot(),
                  Expanded(child: Container()),
                  Text(
                    "NYC",
                    style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:checkout_payment/Features/checkout/presentation/views/widgets/thank_you_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Center(
          child: SvgPicture.asset('assets/images/arrow.svg'),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Transform.translate(
        offset: const Offset(0, -16),
        child: const ThankYouViewBody(),
      ),
    );
  }
}

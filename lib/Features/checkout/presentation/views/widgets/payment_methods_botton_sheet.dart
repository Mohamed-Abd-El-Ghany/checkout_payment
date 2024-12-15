import 'package:checkout_payment/Features/checkout/presentation/views/widgets/payment_methods_list_view.dart';
import 'package:flutter/material.dart';
import 'custom_button_bloc_consumer.dart';

class PaymentMethodsBottonSheet extends StatefulWidget {
  const PaymentMethodsBottonSheet({super.key});

  @override
  State<PaymentMethodsBottonSheet> createState() =>
      _PaymentMethodsBottonSheetState();
}

class _PaymentMethodsBottonSheetState extends State<PaymentMethodsBottonSheet> {
  bool isPaypal = false;

  updatePaymentMethod({required int index}) {
    if (index == 0) {
      isPaypal = false;
    } else {
      isPaypal = true;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16),
          PaymentMethodsListView(
              updatePaymentMethod: updatePaymentMethod),
          const SizedBox(height: 32),
          CustomButtonBlocConsumer(isPaypal: isPaypal),
        ],
      ),
    );
  }
}

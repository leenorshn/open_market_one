import 'package:flutter/material.dart';
import 'package:open_market_one/components/input.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  var phone = "";
  // ElevateButton
// Outilined Button
//TextField
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paiement"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24),
        child: Column(
          children: [
            Text(
              phone,
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Input(
              label: "Entrer votre nom",
              onChanged: (v) {},
            ),
            Input(
              onChanged: (v) {},
              label: "Entrer votre phone",
              length: 10,
              inputType: TextInputType.phone,
            ),
            Input(
              label: "Entrer votre adresse",
              onChanged: (v) {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Ecrir sms"),
        onPressed: () {},
        icon: const Icon(Icons.chat),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}

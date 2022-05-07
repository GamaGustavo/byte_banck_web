import 'package:byte_banck_web/screans/transactions_list.dart';
import 'package:byte_banck_web/widgets/button.dart';
import 'package:flutter/material.dart';

import 'contact_list.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key, required this.title}) : super(key: key);
  final String title;
  final String _bytebanckLogo = 'images/bytebank_logo.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(_bytebanckLogo),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ButtonCommon(
                      title: 'Transfer',
                      icon: Icons.monetization_on,
                      onTap: () => _showTransfer(context)),
                  ButtonCommon(
                      title: 'Transfer Feed',
                      icon: Icons.description,
                      onTap: () => _showTransferFeed(context)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showTransfer(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ContactsList(),
      ),
    );
  }
  void _showTransferFeed(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>TransactionsList(),
      ),
    );
  }
}

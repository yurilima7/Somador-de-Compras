import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:total_compras/App/Controllers/purchase_provider_impl.dart';
import 'package:total_compras/App/Core/Styles/text_styles.dart';

class CardForm extends StatelessWidget {
  final int index;
  const CardForm({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PurchaseProviderImpl>(
      builder: (context, purchase, child) => Card(
        child: ListTile(
          title: Text(
            purchase.reversedPurchase.elementAt(index).productName,
            style: context.textStyles.regular,
          ),

          subtitle: Text(
            '${purchase.reversedPurchase.elementAt(index).quantity}x ${NumberFormat
            .simpleCurrency(locale: 'pt_BR')
            .format(purchase.reversedPurchase.elementAt(index).price)}',
            style: context.textStyles.regular,
          ),

          trailing: Text(
            NumberFormat
            .simpleCurrency(locale: 'pt_BR')
            .format(purchase.reversedPurchase.elementAt(index).productTotal),
            style: context.textStyles.productTotal,
          ),
        ),
      ),
    );
  }
}

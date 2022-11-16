import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:total_compras/App/Controllers/purchase_provider_impl.dart';
import 'package:total_compras/App/Core/Styles/text_styles.dart';
import 'package:total_compras/App/Core/Utils/number_format_br.dart';

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
            '${purchase.reversedPurchase.elementAt(index).quantity}x ${NumberFormatBr()
              .formatBR(purchase.reversedPurchase.elementAt(index).price)}',
            style: context.textStyles.regular,
          ),

          trailing: Text(
            NumberFormatBr()
            .formatBR(purchase.reversedPurchase.elementAt(index).productTotal),
            style: context.textStyles.productTotal,
          ),
        ),
      ),
    );
  }
}

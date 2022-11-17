import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:total_compras/App/Controllers/purchase_provider_impl.dart';
import 'package:total_compras/App/Core/Styles/text_styles.dart';
import 'package:total_compras/App/Core/Utils/number_format_br.dart';

class CardForm extends StatelessWidget {
  final int quantity;
  final String name;
  final double price, total;

  const CardForm({
    Key? key,
    required this.name,
    required this.quantity,
    required this.price,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PurchaseProviderImpl>(
      builder: (context, purchase, child) => Card(
        child: ListTile(
          title: Text(
            name,
            style: context.textStyles.regular,
          ),
          subtitle: Text(
            '${quantity}x ${NumberFormatBr().formatBR(price)}',
            style: context.textStyles.regular,
          ),
          trailing: Text(
            NumberFormatBr().formatBR(total),
            style: context.textStyles.productTotal,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:total_compras/App/Controllers/purchase_provider_impl.dart';
import 'package:total_compras/App/Core/Styles/text_styles.dart';

class Alert extends StatelessWidget {
  final int index;
  const Alert({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Deletar'),
      content: const Text('Deseja deletar esta compra?'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text(
            'Cancelar',
            style: context.textStyles.regular,
          ),
        ),

        Consumer<PurchaseProviderImpl>(
          builder: (context, purchase, child) => TextButton(
            onPressed: () {
              Navigator.pop(context, true);
              purchase.delete(
                index,
                purchase.purchases.elementAt(index).productTotal,
              );
            },
            child: Text(
              'OK',
              style: context.textStyles.regular,
            ),
          ),
        ),
      ],
    );
  }
}

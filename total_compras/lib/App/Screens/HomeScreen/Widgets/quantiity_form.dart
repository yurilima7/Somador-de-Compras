import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:total_compras/App/Controllers/purchase_provider_impl.dart';
import 'package:total_compras/App/Core/Styles/colors_styles.dart';
import 'package:total_compras/App/Core/Styles/text_styles.dart';

class QuantiityForm extends StatelessWidget {
  const QuantiityForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PurchaseProviderImpl>(
      builder: (context, purchase, child) =>  Container(
        constraints: const BoxConstraints.tightFor(height: 58),
    
        margin: const EdgeInsets.only(
          left: 5.0,
          right: 5.0,
        ),
    
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorsStyles.secundary,
            width: 3.0,
          ),
    
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
    
        child: Row(
          children: [
            IconButton(
              onPressed: () => purchase.dec(),
              icon: Icon(
                Icons.remove,
                color: ColorsStyles.secundary,
              ),
            ),
    
            Text(
              '${purchase.quantity}',
              style: context.textStyles.regular,
            ),
            
            IconButton(
              onPressed: () => purchase.inc(),
              icon: Icon(
                Icons.add,
                color: ColorsStyles.secundary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

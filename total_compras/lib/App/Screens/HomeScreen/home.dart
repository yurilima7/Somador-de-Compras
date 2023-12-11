import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:total_compras/App/Controllers/purchase_provider_impl.dart';
import 'package:total_compras/App/Core/Styles/colors_styles.dart';
import 'package:total_compras/App/Core/Styles/text_styles.dart';
import 'package:total_compras/App/Core/Utils/number_format_br.dart';
import 'package:total_compras/App/Core/Widgets/alert.dart';
import 'package:total_compras/App/Core/Widgets/card_form.dart';
import 'package:total_compras/App/Core/Widgets/form_input.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),

      child: Consumer<PurchaseProviderImpl>(
        builder: (context, purchase, child) => Scaffold(
          appBar: AppBar(
            title: Text(
              NumberFormatBr().formatBR(purchase.total),
            ),
          ),
          
          body: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 5.0,
              bottom: 10.0,
            ),
          
            child: Column(
              children: [
                Expanded(
                  child: Consumer<PurchaseProviderImpl>(
                    builder: (context, purchase, child) => 
                    purchase.purchasesLength > 0 ? ListView.builder(
                        itemCount: purchase.purchasesLength,
                        itemBuilder: (_, i) {
                          
                          return Dismissible(
                            direction: DismissDirection.endToStart,
                            key: UniqueKey(),

                            confirmDismiss: (direction) async => await showDialog(
                              context: context,
                              builder: (context) => Alert(index: i),
                            ),

                            background: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                
                                child: Container(
                                  color: ColorsStyles.delete,
                                  child: Icon(Icons.delete, color: ColorsStyles.primary,),
                                ),
                              ),
                            ),

                            child: CardForm(
                              name: purchase.purchases.elementAt(i).productName,
                              price: purchase.purchases.elementAt(i).price,
                              quantity: purchase.purchases.elementAt(i).quantity,
                              total: purchase.purchases.elementAt(i).productTotal,
                            ),
                          );
                        })
                        : Center(
                          child: Text(
                            'Sem dados no momento!',
                            style: context.textStyles.nullList,
                          ),
                        ),
                  ),
                ),

                const FormInput(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

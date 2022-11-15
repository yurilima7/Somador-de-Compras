import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:total_compras/App/Controllers/purchase_provider_impl.dart';
import 'package:total_compras/App/Core/Styles/text_styles.dart';
import 'package:total_compras/App/Screens/Widgets/card_form.dart';
import 'package:total_compras/App/Screens/Widgets/form_input.dart';

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
              NumberFormat.simpleCurrency(locale: 'pt_BR').format(purchase.total),
              style: context.textStyles.appBarTitle,
            ),
            centerTitle: true,
            elevation: 2,
          ),
          
          body: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 5.0,
              bottom: 5.0,
            ),
          
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: purchase.purchasesLength,
                    itemBuilder: (context, i) => CardForm(index: i),
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

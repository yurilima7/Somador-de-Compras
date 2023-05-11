import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:total_compras/App/Controllers/purchase_provider_impl.dart';
import 'package:total_compras/App/Core/Utils/number_format_br.dart';
import 'package:total_compras/App/Core/Widgets/form_input.dart';
import 'package:total_compras/App/Core/Widgets/list_form.dart';

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
              children: const [
                ListForm(),

                FormInput(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

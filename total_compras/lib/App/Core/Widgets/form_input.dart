import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:total_compras/App/Controllers/purchase_provider_impl.dart';
import 'package:total_compras/App/Core/Styles/button_styles.dart';
import 'package:total_compras/App/Core/Styles/text_styles.dart';
import 'package:total_compras/App/Core/Utils/messages.dart';
import 'package:total_compras/App/Models/purchase.dart';
import 'package:total_compras/App/Core/Widgets/quantity_form.dart';
import 'package:validatorless/validatorless.dart';

class FormInput extends StatefulWidget {
  const FormInput({Key? key}) : super(key: key);

  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController priceEC = TextEditingController(
        text: UtilBrasilFields.obterReal(0.00, moeda: true));
    final productEC = TextEditingController();

    return Consumer<PurchaseProviderImpl>(
      builder: (context, purchase, child) => SizedBox(
        height: 220,
        child: Form(
          key: formKey,
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            
            children: [  
              Row(
                children: [
                  Expanded(
                    child: TextFormField(                  
                      style: context.textStyles.regular,
                      controller: priceEC,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                  
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        CentavosInputFormatter(moeda: true),
                      ],
                          
                      decoration: const InputDecoration(
                        label: Text('Valor Unitário'),
                      ),
                      validator: Validatorless.required('Obrigatório!'),
                    ),
                  ),

                  const SizedBox(width: 8,),
          
                  const QuantityForm(),
                ],
              ),
      
              const SizedBox(height: 15,),
      
              TextFormField(             
                style: context.textStyles.regular,
                controller: productEC,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
      
                decoration: const InputDecoration(
                  label: Text('Produto (Opcional)'),
                ),
              ),
          
              const SizedBox(height: 15,),
              
              SizedBox(
                width: double.infinity,

                child: OutlinedButton(
                  style: context.buttonStyles.outButton,
                  onPressed: () async {
                    final valid =
                        formKey.currentState?.validate() ?? false;
                        
                    if(valid 
                      && UtilBrasilFields.converterMoedaParaDouble(priceEC.text)>0)
                      {
                        await purchase.sumTotal(
                          Purchase(
                            productName: productEC.text.isNotEmpty 
                              ? productEC.text 
                              : 'Produto não Informado',
                            price: 
                              UtilBrasilFields.converterMoedaParaDouble(priceEC.text),
                            quantity: purchase.quantity,
                            productTotal: 
                                UtilBrasilFields.converterMoedaParaDouble(priceEC.text) *
                                purchase.quantity,
                          ),
                        );
                
                        setState(() {
                          priceEC = TextEditingController(
                          text: UtilBrasilFields.obterReal(0.00, moeda: true));
                        });
                        productEC.clear();
                    } else {
                      Messages.showError('Informe um valor válido!');
                    }
                  },
                  
                  child: Text(
                    'Calcular',
                    style: context.textStyles.button,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PaymentScreen extends StatefulWidget {
  final VoidCallback onPaymentSuccess;
  PaymentScreen({required this.onPaymentSuccess});

  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String cardNumber = '';
  String expiryDate = '';
  String cvvCode = '';
  String cardHolderName = '';
  bool isCvvFocused = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
                onCreditCardWidgetChange: (CreditCardButton) {}),
           Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CreditCardForm(
                      formKey: formKey,
                      obscureCvv: true,
                      obscureNumber: true,
                      cardNumber: cardNumber,
                      cvvCode: cvvCode,
                      cardHolderName: cardHolderName,
                      expiryDate: expiryDate,
                      onCreditCardModelChange: onCreditCardModelChange,
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      onPressed: () {
                        if(formKey.currentState!.validate())
                        {
                          widget.onPaymentSuccess();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Payment Success'),
                            ),
                            );
                            Navigator.pop(context);
                        }else{
                          print('invalid');
                        }     
                      },
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: Text('Validate',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,                        

                        ),
                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

 void onCreditCardModelChange(CreditCardModel CreditCardModel) {
    setState(() {
      cardNumber = CreditCardModel.cardNumber;
      expiryDate = CreditCardModel.expiryDate;
      cardHolderName = CreditCardModel.cardHolderName;
      cvvCode = CreditCardModel.cvvCode;
      isCvvFocused = CreditCardModel.isCvvFocused;
    });
  }
}

@JS()
library stripe;

import 'package:flutter/material.dart';
import 'package:js/js.dart';

void redirectToCheckout(BuildContext _) async {
  final stripe = Stripe(
      'pk_test_51LbIeIL5k5aLBvWEpjAhq1nfMFwbONVY9X4OiWZkSjHtIsVFoS23I9L2YoWiQiAWDcUOOzRM1sAdtU10xHX5D0Qg003s65LDp3');
  stripe.redirectToCheckout(CheckoutOptions(
    lineItems: [
      LineItem(price: 'price_1LbeSBL5k5aLBvWE35pk0EbD', quantity: 1),
    ],
    mode: 'payment',
    successUrl: 'http://localhost:8080/#/success',
    cancelUrl: 'http://localhost:8080/#/cancel',
  ));
}

@JS()
class Stripe {
  external Stripe(String key);

  external redirectToCheckout(CheckoutOptions options);
}

@JS()
@anonymous
class CheckoutOptions {
  external List<LineItem> get lineItems;

  external String get mode;

  external String get successUrl;

  external String get cancelUrl;

  external factory CheckoutOptions({
    List<LineItem> lineItems,
    String mode,
    String successUrl,
    String cancelUrl,
    String sessionId,
  });
}

@JS()
@anonymous
class LineItem {
  external String get price;

  external int get quantity;

  external factory LineItem({String price, int quantity});
}

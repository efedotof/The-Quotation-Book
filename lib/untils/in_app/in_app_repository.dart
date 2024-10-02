import 'package:flutter/material.dart';
import 'package:flutter_rustore_billing/flutter_rustore_billing.dart';
import 'package:the_quotation_book/untils/in_app/in_app_interface.dart';

class InAppRepository implements InAppInterface {
  @override
  void init() {
    RustoreBillingClient.initialize(
            "2063572752", "com.efedotov.quotation", true)
        .then((value) {
      debugPrint(">>InAppRepository>>  initialize success: $value");
    }, onError: (err) {
      debugPrint(">>InAppRepository>> InAppRepository initialize err: $err");
    });
  }

  @override
  void cancellationOfThePurchase(String id) {
    RustoreBillingClient.deletePurchase(id).then((res) {
      debugPrint(">>InAppRepository>>  Delete success");
    }, onError: (err) {
      debugPrint(">>InAppRepository>> Error getPurchaseInfo: $err");
    });
  }

  @override
  void checkingTheAvailabilityOfWorkWithPayments() {
    RustoreBillingClient.available().then((value) {
      debugPrint(">>InAppRepository>> available success $value");
    }, onError: (err) {
      debugPrint(">>InAppRepository>> available err: $err");
    });
  }

  @override
  void confirmation(String id) {
    RustoreBillingClient.confirm(id).then((response) {
      debugPrint(">>InAppRepository>> confirm success: $response");
    }, onError: (err) {
      debugPrint(">>InAppRepository>> confirm err: $err");
    });
  }

  @override
  void gettingAListOfProducts(List<String?> ids) {
    RustoreBillingClient.products(ids).then((response) {
      for (final product in response.products) {
        debugPrint(">>InAppRepository>> ${product?.productId}");
      }
    }, onError: (err) {
      debugPrint(">>InAppRepository>> products err: $err");
    });
  }

  @override
  void gettingAShoppingList() {
    RustoreBillingClient.purchases().then((response) {
      for (final product in response.purchases) {
        debugPrint(">>InAppRepository>> ${product?.purchaseId}");
      }
    }, onError: (err) {
      debugPrint(">>InAppRepository>> purchases err: $err");
    });
  }

  @override
  void gettingPurchaseInformation(String id) {
    RustoreBillingClient.purchaseInfo(id).then((purchase) {
      debugPrint(">>InAppRepository>> ${purchase.toString()}");
    }, onError: (err) {
      debugPrint(">>InAppRepository>> Error getPurchaseInfo: $err");
    });
  }

  @override
  void productPurchase(String id, String? developerPayload) {
    RustoreBillingClient.purchase(id, developerPayload).then((response) {
      debugPrint(">>InAppRepository>> purchase success: $response");
    }, onError: (err) {
      debugPrint(">>InAppRepository>> purchase err: $err");
    });
  }
}

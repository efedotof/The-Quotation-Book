

abstract interface class InAppInterface {
  void init(){}
  void checkingTheAvailabilityOfWorkWithPayments(){}
  void gettingAListOfProducts(List<String?> ids){}
  void productPurchase(String id, String? developerPayload){}
  void gettingAShoppingList(){}
  void gettingPurchaseInformation(String id){}
  void confirmation(String id){}
  void cancellationOfThePurchase(String id){}
}
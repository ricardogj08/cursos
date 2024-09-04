class Main {
  public static void main(String[] args) {
    PaymentMethod[] paymentMethods = {
      new CashPayment("Soles"),
      new CreditCardPayment("1234-5678-9101-2345"),
      new CashPayment("Dólares")
    };

    for (PaymentMethod paymentMethod: paymentMethods) {
      paymentMethod.processPayment(100);
    }
  }
}
